obj-m += hw_module.o

PWD := $(CURDIR)

all:
	$(MAKE) -C $(CURDIR)/../buildroot/output/build/linux-6.12.47/ \
			M=$(PWD) \
			ARCH=riscv \
			CROSS_COMPILE=/home/vvdovin/aqua/tests/embedded-linux-sandbox/buildroot/output/host/bin/riscv64-buildroot-linux-gnu- \
			modules

clean:
	$(MAKE) -C $(CURDIR)/../buildroot/output/build/linux-6.12.47/ M=$(PWD) clean

help:
	$(MAKE) -C $(CURDIR)/../buildroot/output/build/linux-6.12.47/ M=$(PWD) help
