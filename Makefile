PWD := $(CURDIR)/br_overlay/oot_modules/$(MODULE_NAME)

BUILDROOT_DIR := $(CURDIR)/buildroot
LINUX_DIR := $(BUILDROOT_DIR)/output/build/linux-6.12.47
COMPILER := $(BUILDROOT_DIR)/output/host/bin/riscv64-buildroot-linux-gnu-


.PHONY: all qemu rebuild-rootfs clean help check_module_name


check_module_name:
ifeq ($(MODULE_NAME),)
	$(error "No module specified.")
endif



all: check_module_name
	$(MAKE) -C $(LINUX_DIR) \
			M=$(PWD) \
			ARCH=riscv \
			CROSS_COMPILE=$(COMPILER) \
			modules



qemu:
	$(BUILDROOT_DIR)/output/images/start-qemu.sh



rebuild-rootfs:
	$(MAKE) -C $(BUILDROOT_DIR)



clean: check_module_name
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) clean



help:
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) help
