#include <linux/module.h>
#include <linux/printk.h>
#include <linux/init.h>

static int __init hw_init(void)
{
    int rc = 0;
    pr_info("hello world module loaded (rc %d)\n", rc);

    return rc;
}

static void __exit hw_exit(void)
{
    pr_info("hello world module unloaded\n");
}

module_init(hw_init);
module_exit(hw_exit);

MODULE_LICENSE("GPL");
