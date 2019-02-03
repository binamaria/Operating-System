#compileOS.sh
#Bina Maria (00366107)
#MS (CS) Fall - 17
#Shell script to produce floppya.img file.
nasm bootload.asm   #To assemble bootloader using NASM assembler!
dd if=/dev/zero of=floppya.img bs=512 count=2880 #To make image file of floppy disk that is filled with zeros!
dd if=bootload of=floppya.img bs=512 count=1 conv=notrunc #To copy bootload to the beginning of floppya.img!
bcc -ansi -c -o kernel_c.o kernel.c #To compile your kernel!
as86 kernel.asm -o kernel_asm.o #To assemble kernel.asm!
ld86 -o kernel -d kernel_c.o kernel_asm.o #To link and produce kernel!
dd if=kernel of=floppya.img bs=512 conv=notrunc seek=3 #To copy kernel to the third sector of floppya.img!
dd if=message.txt of=floppya.img bs=512 count=1 seek=30 conv=notrunc #To put message.txt at sector 30
