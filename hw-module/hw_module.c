#include <linux/module.h>
#include <linux/printk.h>


int init_module(void)
{
    pr_info("module loaded\n");

    return 0;
}

void cleanup_module(void)
{
    pr_info("module unloaded\n");
}

MODULE_LICENSE("GPL");
