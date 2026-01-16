obj-m += hw_module.o

PWD := $(CURDIR)

BUILDROOT_DIR := $(CURDIR)/../buildroot
LINUX_DIR := $(BUILDROOT_DIR)/output/build/linux-6.12.47
COMPILER := $(BUILDROOT_DIR)/output/host/bin/riscv64-buildroot-linux-gnu-

all:
	$(MAKE) -C $(LINUX_DIR) \
			M=$(PWD) \
			ARCH=riscv \
			CROSS_COMPILE=$(COMPILER) \
			modules

clean:
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) clean

help:
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) help
