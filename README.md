# seng440

<h1>Compile and run on Linux</h1>

<h3>x86-64</h3>
To compile the program: </n>
gcc final_code.c -o final_code.exe

If you wish to test optimizations, 1, 2a,2b, compile with:</n>
gcc optimization_1_macros.c -o optimization_1_macros.exe -lm 

To run the program:</n>
./final_code.exe

<h3>ARM Architecture</h3>
After ssh-ing to seng440.ece.uvic.ca

To compile the program: </n>
arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o final_code.exe final_code.c

To run the program: </n>
Qemu-arm final_code.exe

 1, 2a, 2b optiizations had to be run with “arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o optimization_1_macros.exe optimization_1_macros.c -lm” for math.h functions to compile.
