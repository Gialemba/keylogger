#modname := nocta_keylogger
#obj-m := $(modname).o
obj-m += keylogger.o

#nocta_rootkit-objs := keylogger.o
KVERSION = $(shell uname -r)
KDIR := /lib/modules/$(KVERSION)/build

all:
	make -C $(KDIR) M=$(PWD) modules

clean: 
	make -C $(KDIR) M=$(PWD) clean

load:
	insmod keylogger.ko
#	insmod $(modname).ko

unload:
	rmmod keylogger
#	rmmod $(modname)
