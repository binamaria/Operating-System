
Author:  Bina Maria (00366107)


The program contain system calls to print a string to the video, read in a line from the keyboard, and read a sector from the disk. The program calls interrupt 0x10 with 0xE in the AH register for printing to the screen.	 It uses Interrupt 0x16 for reading a character from the keyboard. Then it reads a sector from the disk using  Interrupt 0x13. An interrupt 0x21 handler is created to run the code. The interrupt 0x21 handler provide printString, readString and readSector services.

For building the operating system from scratch,first navigate to the project's root directory and type "chmod +x compileOS.sh" to make sure that the system recognizes the shell file to build the project.
Type "./compileOS.sh" to execute the script. A new blank disk image will be created from scratch and the program will be written to it.

On boot, the operating system will display the message "Hello world" and then the user will be prompted to input text with the message "Enter a line".  The user can then type characters or delete or backpress them as desired.  When the enter key is typed the input is finalized.  Their message will be echoed back and an additional message read from the disk will be displayed on the screen. 



