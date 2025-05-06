obj-m += keylogger.o

KVERSION = $(shell uname -r)
KDIR := /lib/modules/$(KVERSION)/build

all:
	make -C $(KDIR) M=$(PWD) modules

clean: 
	make -C $(KDIR) M=$(PWD) clean

load:
	insmod keylogger.ko

unload:
	rmmod keylogger
