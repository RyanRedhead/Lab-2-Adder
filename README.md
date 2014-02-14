Lab-2-Adder
===========

Prelab = Done
#Final Circuit Schematic with Device Labels
![Alt Text](https://github.com/RyanRedhead/Lab-2-Adder/blob/master/FinalPicture.PNG?raw=true)
#4 Bit Adder Testbench Output
![Alt Text](https://github.com/RyanRedhead/Lab-2-Adder/blob/master/lab2_4bit_testbench.PNG?raw=true)
#Design Process
A 1 bit adder was created and 4 of them were linked together to create a 4 bit adder. The type of carry this setup has is a ripple carry. 

Mux
-A selector was designed to choose the operation (addition/subtraction) and negate B, which with unsigned numbers gives subtraction.

Overflow
-A overflow was created to check for a carry out on after the operation on the most significant bit.

All Together
-All of these were put together to create the final cicuit schematic seen above.

#Errors

Sum needed to be set as inout?.. to work

Commas after port mapping

#Documentation
Information to get the I and J in the testbench loop was found online in multiple sources.
To find how to use a Mux as a component a process statement was used, http://www.ics.uci.edu/~jmoorkan/vhdlref/process.html helped.

So far overflow works and the subtraction button on the Nexys2, still working on the 4 LED lights.
