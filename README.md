Code from following the [Backing Pi](http://www.cl.cam.ac.uk/projects/raspberrypi/tutorials/os/index.html) tutorial to write a basic Raspberry Pi operating system in ARM assembly.

To prepare the Pi format an SD card and copy the contents of the [pre-compiled bootloader/GPU firmware](https://github.com/raspberrypi/firmware/tree/master/boot) into the root directory.

To compile the kernel image copy the contents of a sample directory into ```template/source/``` and run ```make -C template```.

Then replace the ```kernel.img``` on the SD card with the newly complied ```template/kernel.img```.

> Written with [StackEdit](https://stackedit.io/).
