# DCF77_Funkuhr
DCF77 Clock with PIC16F73  
All Display-Units are Controlled via SPI and HC595-Shift-Registers(SR).
Project can be compiled with Windows and Linux xc8-Compiler. For both OS, xc8 needs to be in PATH.

## PIN Configuraiton
RB0 - DCF77  
RB1 - Output Enable of all SRs  
RB2 - Enable Day-of-week  
RB3 - Enable Date  
RB4 - Enable Time  
RB5 - Clear all SRs  
RB6 - Programmer  
RB7 - Programmer  
RC6 - TX (9600 Baud, 8N1)  
RC7 - RX (unused at the moment)  
RC5 - SPI-TX  
RC3 - SPI-CLK  

## Example Front View with Time only
<img src="images/Front_WIP.jpg" width="600" height="480"  /> 
