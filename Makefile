
# Set module name from the list:
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

mknod:
	echo "Make node"

rmnod:
	echo "Remove node"

info:
	modinfo $(program_name).ko 			#userspace program prints .modinfo section

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean