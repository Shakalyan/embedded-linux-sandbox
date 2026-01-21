#include <linux/module.h>
#include <linux/printk.h>
#include <linux/init.h>

static int __init chardev_init(void)
{
    int rc = 0;
    pr_info("chardev module loaded (rc %d)\n", rc);

    return rc;
}

static void __exit chardev_exit(void)
{
    pr_info("chardev module unloaded\n");
}

module_init(chardev_init);
module_exit(chardev_exit);

MODULE_LICENSE("GPL");
