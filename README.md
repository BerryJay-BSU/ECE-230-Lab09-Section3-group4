# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Jay Berry and Aprameya Koushik Sarukkai

## Summary
For this lab we created a D-latch and then used 8 separates latches to create a byte. Then we used 4 of the byte modules to build a memory system that connected to separate outputs which were selected by the demuliplexer. We also used a demultiplexer to act as the enable signal. The multiplexer was used to display the selection on the board's LEDs.

From our experience in the lab, we were unable to get the button to stay pressed without actively pressing it. After working with the TA's it may have been a board issue but everything else functioned as intended.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The problem with structural Verilog is that it does not hold memory. By using the always blocks for the latches, we can store the previous signal and then use structual verilog to connect the latches in order to make the full memory circuit.

### What is the meaning of always @(*) in a sensitivity block?
This means that we are going to respond to a change to a variable(s) within the block and then adjust the output. The * will specifically check for everything in the list without listing each variable to check.

### What importance is memory to digital circuits?
Memory is important for working with circuits that need to "remember" what happened previously. In the case of this lab we stored the destination data so that the latches would "remember" after we stopped pressing the enable button.
