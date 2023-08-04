seng440
Compile and run on Linux
x86-64

To compile the program:

gcc final_code.c -o final_code.exe
<br/>

If you wish to test optimizations, 1, 2a,2b, compile with:

gcc optimization_1_macros.c -o optimization_1_macros.exe -lm
<br/>

To run the program:

./final_code.exe
<br/>
ARM Architecture

After ssh-ing to seng440.ece.uvic.ca

To compile the program:

arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o final_code.exe final_code.c
<br/>

To run the program:

Qemu-arm final_code.exe
<br/>

1, 2a, 2b optimizations had to be run with arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o optimization_1_macros.exe optimization_1_macros.c -lm for math.h functions to compile.
