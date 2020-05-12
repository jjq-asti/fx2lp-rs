BUS	?= 001
DEV	?= 005

all:bulkloop

bulkloop: bulkloop.o fw.o
	$(CC) $(CFLAGS) -o bulkloop bulkloop.o fw.o
list:
	$(PROG) --list

prog:	bulkloop.ihx
	sudo $(PROG) -d=$(BUS).$(DEV) reset prg:bulkloop.ihx run

reset:
	sudo $(PROG) -d=$(BUS).$(DEV) reset

clobber: clean
	rm -f bulkloop.ihx .errs.t

include ../ezusb/Makefile.incl

