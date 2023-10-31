# General-Purpose-Processor
A geneeral purpose processor constructed in VHDL using 2 latches, ALU, and a Control unit containing a FSM, and 4x16 decoder

For the circuit, There were a multitude of things used, such as an FSM which acted as a mealy machine, a decoder which would take the current state of the machine and send a 16 digit number to the ALU. Finally the ALU would take those digits and pass it through the SSEG to give the seven segment display. The way the latches operated was that input A would take in the binary input of 83 in hexadecimal. Input B would take the binary input of 13 in hexadecimal. The latch would be on or off depending on the reset and clock. The purpose of the ALU is to compute certain desired functions for our A and B input. The desired inputs are shown in the image below plus what their outputs should look like.

<img width="467" alt="Screenshot 2023-10-31 at 3 17 58 PM" src="https://github.com/OzyKartike/General-Purpose-Processor/assets/64118528/5571b8de-b85c-4c90-b6ec-883157538efa">

Below is a good visual representation of the block diagram of the circuit:

<img width="733" alt="Screenshot 2023-10-31 at 3 21 41 PM" src="https://github.com/OzyKartike/General-Purpose-Processor/assets/64118528/f10ae346-5111-4d31-bd68-f5ac8005cff1">

Below is the corresponding waveform for the circuit.

<img width="737" alt="Screenshot 2023-10-31 at 3 27 35 PM" src="https://github.com/OzyKartike/General-Purpose-Processor/assets/64118528/41313ae8-a7e0-43b4-a446-95f352d549e4">
