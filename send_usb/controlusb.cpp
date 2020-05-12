//////////////////////////////////////////////////////////////////////
// controlusb.cpp -- Communicate with EZ-USB using Bulk EP
// Date: Fri Mar 30 09:54:18 2018   (C) ve3wwg@gmail.com
///////////////////////////////////////////////////////////////////////

#include <iostream>
#include <fstream>
#include <assert.h>
#include <string>
#include <libusb-1.0/libusb.h>

using namespace std;

static libusb_device **usb_devs = nullptr;
static ssize_t n_devices = 0;



//////////////////////////////////////////////////////////////////////
// Locate USB device by vendor and product ID
//////////////////////////////////////////////////////////////////////

static libusb_device_handle *find_usb_device(unsigned id_vendor,unsigned id_product) {
	
	if ( !usb_devs ) {
		libusb_init(nullptr);		// Initialize
		// Fetch list of devices
		n_devices = libusb_get_device_list(nullptr,&usb_devs);
		if ( n_devices < 0 )
			return nullptr;		// Failed
	}
	return libusb_open_device_with_vid_pid(
		nullptr,id_vendor,id_product);
}

//////////////////////////////////////////////////////////////////////
// Close usb library
//////////////////////////////////////////////////////////////////////

static void close_usb() {

	if ( usb_devs ) {
		libusb_free_device_list(usb_devs,1);
		libusb_exit(nullptr);
	}
}

//////////////////////////////////////////////////////////////////////
// Perform a bulk read
//////////////////////////////////////////////////////////////////////

static int bulk_read(libusb_device_handle *hdev, unsigned char endpoint, void *buffer, int buflen, unsigned timeout_ms) {
	unsigned char *bufp = (unsigned char*)buffer;
	int rc, xlen = 0;

	assert(endpoint & 0x80);
	rc = libusb_bulk_transfer(hdev,endpoint,bufp,buflen,&xlen,timeout_ms);
	if ( rc == 0 || rc == LIBUSB_ERROR_TIMEOUT )
		return xlen;
	return -int(rc);
}

//////////////////////////////////////////////////////////////////////
// Perform a bulk write
//////////////////////////////////////////////////////////////////////

static int bulk_write(libusb_device_handle *hdev, unsigned char endpoint, void *buffer, int buflen, unsigned timeout_ms) {
	unsigned char *bufp = (unsigned char*)buffer;
	int rc, xlen = 0, total = 0;

	assert(!(endpoint & 0x80));

	for (;;) {
		rc = libusb_bulk_transfer(hdev,endpoint,bufp,buflen,&xlen,timeout_ms);
		if ( rc == 0 || rc == LIBUSB_ERROR_TIMEOUT ) {
			total += xlen;
			bufp += xlen;
			buflen -= xlen;
			if ( buflen <= 0 )
				return total;
		} else	{
			return -int(rc); // Failed
		}
	}
}

//////////////////////////////////////////////////////////////////////
// File Handlers
//////////////////////////////////////////////////////////////////////


static void send_file(string filename, libusb_device_handle *hdev){
	
	char *memblock;
	streampos size;
	ifstream file;
	int rc;

	file.open(filename, ios::binary | ios::ate); // pointer at the end of file
	size = file.tellg(); // returns the address count of the end of file

	if( !file.is_open() ){
		cout << "Can't open file" << endl;
		exit(0);
	}

	file.close();
	int last_byte;
	int chunk_size;

	if (size > 512){
		last_byte = size % 512;
		chunk_size = 512;
	}else{
		chunk_size = size;
	}

	while ( file.good() ){
		memblock = new char [chunk_size];
		file.read(memblock,chunk_size); //each read will move the pointer to the next address
		rc = bulk_write(hdev,0x02,memblock,chunk_size,10/*ms*/);
		if ( rc < 0 ) {
			cout << libusb_strerror(libusb_error(-rc)) << "write bulk to EP 2\n"; 
			// break;
		}
	
		//bulk_write(memblock)
		streampos new_size = file.tellg();
		cout << "Wrote " << new_size << "bytes" << endl;
		int rem = (size - new_size);
		if ((rem < chunk_size) && (rem > 0)){
			memblock = new char [last_byte];
			file.read(memblock, last_byte);
			new_size = file.tellg();
			cout << "Wrote " << new_size << "bytes" << endl;
			rem = size - new_size;
		}
		if (rem == 0) break;
	}
}

//////////////////////////////////////////////////////////////////////
// Save File
//////////////////////////////////////////////////////////////////////
static void save_file(char *data_buff, streampos size){
	ofstream file;

	file.open("filename", ios::binary | ios::app);
	file.write(data_buff, size);

}
//////////////////////////////////////////////////////////////////////
// Main program:
//////////////////////////////////////////////////////////////////////

int
main(int argc,char **argv) {
	int rc;
	unsigned id_vendor = 0x04b4, id_product = 0x4718;
	libusb_device_handle *hdev;

	hdev = find_usb_device(id_vendor,id_product);
	if ( !hdev ) {
		fprintf(stderr,
			"Device not found. "
			"Vendor=0x%04X Product=0x%04X\n",
			id_vendor,id_product);
		return 1;
	}

	rc = libusb_claim_interface(hdev,0);
	if ( rc != 0 ) {
		cout << libusb_strerror(libusb_error(rc)) << "Claiming interface 0.\n";
		libusb_close(hdev);
		return 2;
	}

	cout << "Interface claimed:\n";

/*	if ( (rc = libusb_set_interface_alt_setting(hdev,0,1)) != 0 ) {
		fprintf(stderr,"%s: libusb_set_interface_alt_setting(h,0,1)\n",
			libusb_strerror(libusb_error(rc)));
		return 3;
	}*/
	send_file("r1.jpg", hdev);
	if ( rc < 0 ) {
		cout << libusb_strerror(libusb_error(-rc)) << "write bulk to EP 2\n"; 
		// break;
	}

	rc = libusb_release_interface(hdev,0);
	assert(!rc);
	libusb_close(hdev);

	close_usb();
	return 0;
}

// End controlusb.cpp
