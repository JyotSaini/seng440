# seng440

<h1>Compile and run on Linux</h1>

<h3>x86-64</h3>
To compile the program:<br />
<br />
**gcc final_code.c -o final_code.exe**
<br />
If you wish to test optimizations, 1, 2a,2b, compile with:<br />
**gcc optimization_1_macros.c -o optimization_1_macros.exe -lm**

To run the program:
**./final_code.exe**

<h3>ARM Architecture</h3>
After ssh-ing to seng440.ece.uvic.ca
<br />
To compile the program:<br />
**arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o final_code.exe final_code.c**
<br />
To run the program:<br />
**Qemu-arm final_code.exe**
<br />
 1, 2a, 2b optiizations had to be run with “arm-linux-gcc -std=c99 -mfloat-abi=softfp -static -o optimization_1_macros.exe optimization_1_macros.c -lm” for math.h functions to compile.
