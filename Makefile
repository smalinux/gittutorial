<<<<<<< HEAD
# Set module name - i use 'sma_' prefix
program_name = sma_chardev
obj-m += sma_chardev.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

# insert
i:
	insmod $(program_name).ko 		# Try 'modprobe' in near future

# remove
r:
	rmmod $(program_name)

# print
p:
	dmesg

# clear dmesg
c:
	dmesg -c

info:
	modinfo $(program_name).ko 			#userspace program prints .modinfo section

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
=======

all:
	gcc x11.c -L/usr/X11R6/lib -lX11 -o x11
>>>>>>> 80990818bb344bfe025e8a6ca0ce6e4526579559
