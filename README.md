# Digital Logic Approach to OMR Implementation

<!-- First Section -->
## Team Details
<details>
  <summary>Detail</summary>

  Semester: 3rd Semester, BTech CSE

  Section: S1

  Member-1: Atharva Atul Rege 231CS114 atharvaatulrege.231cs114@nitk.edu.in

  Member-2: B Sriram 231CS116 bsriram.231cs116@nitk.edu.in

  Member-3: Shreyas Lal  231CS156 shreyaslal.231cs156@nitk.edu.in
</details>

<!-- Second Section -->
## Abstract
<details>
  <summary>Detail</summary>

### Motivation
In modern education, fast and accurate automated evaluation of multiple-choice questions (MCQs) is crucial for efficiently managing large-scale assessments. Manual grading is time-consuming and prone to errors. Inspired by this challenge, we set out to build an Optical Mark Recognition (OMR) machine using digital logic that is both precise and efficient. Our motivation stems from the desire to create a practical solution that can be easily implemented in educational institutions with limited resources, providing them a reliable tool for automating the grading process.

### Problem Statement
The manual evaluation of hundreds or thousands of OMR answer sheets in large-scale examinations leads to delays and increased chances of human error. Existing OMR machines, though effective, are often expensive or too complex for smaller institutions to adopt. Our goal is to design a small-scale hardware-based OMR machine using basic digital logic circuits. Our system will scan the answer sheets, compare the student responses with pre-stored solutions, and grade them, displaying the total score for immediate and accurate evaluation.

### Features
- **Digital Memory Storage:** Correct answers are stored in D flip-flops, enabling real-time comparisons with scanned responses and allowing easy reset or updates for new exams.

- **Small-Scale OMR Scanner:** A built-in scanner unit allows the user to insert a hardcopy OMR sheet, where the system uses light-dependent resistors (LDRs) to detect marked answers sequentially.

- **Multiplexing for Question Handling:** A 16-to-1 multiplexer is used to select the correct stored answer from memory based on the question number, enabling seamless transitions during the scanning process.

- **Real-Time Comparison and Evaluation:** The scanned answers are compared to stored correct answers using a digital comparator, with a BCD counter tracking and incrementing the score. The total and positive scores are then displayed on seven-segment displays, providing immediate feedback.

- **Negative Marking:** Two counters track correct and incorrect answers, with the final score calculated by adding positive points and deducting for incorrect ones.
 
</details>


<!-- Third Section -->
## Functional Block Diagram
<details>
  <summary>Detail</summary>
  
![img](https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/2b71653ce06b9bfd9641b9a40d2045c4f1e22ab0/Snapshots/S1-T14-BlockDiagram.svg)

</details>


<!-- Fourth Section -->
## Working
<details>
  <summary>Detail</summary>
  
###
This project is designed to calculate the final scores of scanned OMR answer sheets by comparing
them with pre-stored correct answers, which are set by the user initially. The score is determined by
awarding +1 for each correct answer and -1 for each incorrect answer. If the final score is negative,
it is displayed as 0; otherwise, the calculated score is shown. Each question has four options (A, B,
C, and D), with only one correct answer.

###
4-bit D-Flip Flops are used to store the correct answers, with each question having its own
corresponding D-Flip Flop to store the answer. This system is implemented for up to ten questions,
but the number of questions can be scaled as needed. Additionally, we can choose to evaluate fewer
than ten questions for a particular exam if required.

###
There are four 16:1 multiplexers, one for each option, with the question number currently being
evaluated as their select line. These multiplexers determine whether the corresponding option is
correct for the question being evaluated.

###
We have developed a small-scale OMR (Optical Mark Recognition) sheet scanner using LightDependent Resistors (LDRs) and LEDs. These components are positioned on opposite sides—LEDs on top and LDRs on the bottom—where the answer sheet is inserted for scanning. The answer sheet
includes four options for each question, and the correct option must be shaded using a pencil. When
a circle corresponding to an option is shaded, less light from the LEDs passes through the shaded
option compared to the unshaded options. This causes an increase in the resistance of the LDR
associated with the marked option. A circuit is then designed to detect this change in resistance and
generate an ”ON” signal, indicating that the option is marked. This process is repeated for each
question.

###
To help the circuit detect when responses for the next question are being scanned, a fifth circle
is always shaded. As the paper slides forward for the next question, the LDR beneath this shaded
circle temporarily detects an unshaded area between questions, resulting in reduced resistance. This
fluctuation serves as a clock signal for a counter that tracks the number of questions evaluated.
Finally, the correct answer, retrieved from a multiplexer, is compared to the scanned answer
using a 4-bit comparator. If the marked answer is correct, a counter is incremented to track the
number of correctly answered questions. A real-time display using a 7-segment display shows the
count of correct answers.

###
Additionally, a separate counter records the number of incorrect answers. A 4-bit subtractor
is then used to calculate the total score by subtracting the number of incorrect answers from the
number of correct ones. If the result is negative, the final score is displayed as zero. The score is
shown on a 7-segment display.

###
**Truth Table**
###
![img](https://github.com/shreyaslal/S1-T14-Digital-Logic-Approach-to-OMR-Implemenation/blob/0ee6b97599af7c1f90eac5ce6efaeb18ee9e8da7/Snapshots/Block%20Diagram%20and%20Functional%20Table/Truth%20Table.jpg)

###
**Flow Chart**
![img](https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/7b0b968147196d3cd378287562b7e4c58215e3ec/Snapshots/Block%20Diagram.svg)


</details>

<!-- Fifth Section -->
## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  ###
  The <a href="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/tree/main/Logisim">Logisim</a> folder consists of the Logisim files of the Digital Logic Approach to OMR Implementation.


###
  **Overall Circuit**
  ![img](https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-Overall.png)


###
###
  **Quad D Flip-Flop Circuit**
    <div style="flex: 1; text-align: center;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-DFF.png" alt="Quad D Flip-Flop Circuit" width="400px">
    </div>
  </div>
 
 ###
 ###
 
  <div style="display: flex; align-items: center; margin-bottom: 100px; margin-top: 100px;">
    <div style="flex: 1;">
      <p><strong>16-Line to 1-Line Data Selector/Multiplexer Circuit</strong></p>
    </div>
    <div style="flex: 1; text-align: center; margin-left: 20px;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-MUX.png" alt="Multiplexer Circuit" width="400px">
    </div>
  </div>

###
###

  <div style="display: flex; align-items: center; margin-bottom: 100px; margin-top: 100px;">
    <div style="flex: 1;">
      <p><strong>12 Stage Ripple Carry Binary Counter Circuit</strong></p>
    </div>
    <div style="flex: 1; text-align: center; margin-left: 20px;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-COUNTER.png" alt="Binary Counter Circuit" width="400px">
    </div>
  </div>

###
###

  <div style="display: flex; align-items: center; flex-direction: column; margin-bottom: 150px;">
    <div style="margin-bottom: 10px;">
      <p><strong>4-bit Magnitude Comparator Circuit</strong></p>
    </div>
    <div style="text-align: center;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-COMPARATOR.png" alt="Comparator Circuit" width="400px">
    </div>
  </div>

###
###

  <div style="display: flex; align-items: center; flex-direction: column; margin-bottom: 150px;">
    <div style="margin-bottom: 10px;">
      <p><strong>4-bit Full Adder</strong></p>
    </div>
    <div style="text-align: center;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-BCD-ADDER.png" alt="Full Adder" width="400px">
    </div>
  </div>

###
###

  <div style="display: flex; align-items: center; flex-direction: column; margin-bottom: 150px;">
    <div style="margin-bottom: 10px;">
      <p><strong>BCD to 7-segment Decoder Circuit</strong></p>
    </div>
    <div style="text-align: center;">
      <img src="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/6f2e4d220eed3d33b48b72930f3f26435f5be0db/Snapshots/Logisim%20Circuits/S1-T14-BCD-TO-7.png" alt="Decoder Circuit" width="400px">
    </div>
  </div>

</details>


<!-- Sixth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>

###
   The <a href="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/tree/main/Verilog">Verilog</a> folder contains the main file and the test bench file along with the output file.
###

### Modules

#### Behavioral
```
//Design of Digital Systems Mini-Project
//S1 Team 14 - Digital Logic Approach to OMR Implementation
//Behavioral Model

// D Flip-Flop Module
module D_FlipFlop(
    input reset,     
    input [3:0] d,    
    output reg [3:0] q 
);

    always @(reset or d) begin
        if (reset) begin
            q <= 4'b0;
        end else begin
            q <= d;
        end
    end
endmodule

// Comparator Module
module Comparator(
    input [3:0] A,   
    input [3:0] B,   
    output equal);

    assign equal = (A == B);
endmodule

// OMR Machine Module
module OMR_Machine(
    input [39:0] correct_answers, 
    input [39:0] student_answers, 
    input reset,    
    output reg [3:0] score_neg,              
    output reg [3:0] score        
);
    wire [3:0] stored_answers [9:0];
    wire [9:0] compare_results;
    integer j; 

    generate
        genvar i;
        for (i = 0; i < 10; i = i + 1) begin : dff_block
            D_FlipFlop dff (
                .reset(reset),
                .d(correct_answers[i*4 +: 4]),
                .q(stored_answers[i])
            );
        end
    endgenerate

    generate
        for (i = 0; i < 10; i = i + 1) begin : compare_block
            Comparator comp (
                .A(student_answers[i*4 +: 4]),
                .B(stored_answers[i]),
                .equal(compare_results[i])
            );
        end
    endgenerate

    always @(*) begin
        if (reset) begin
            score = 4'b0;
            score_neg = 4'b0;
        end else begin
            score = 4'b0;
            score_neg = 4'b0;
            for (j = 0; j < 10; j = j + 1) begin
                if (compare_results[j]) begin
                    score = score + 4'b0001; // Count correct answers
                end else begin
                    score_neg = score_neg + 4'b0001;
                end   
            end
            if(score >= score_neg) begin
                score = score - score_neg;
            end else begin
                score = 4'b0;
            end
        end
    end 
endmodule
```
#### Gate Level
```
//Design of Digital Systems Mini-Project
//S1 Team 14 - Digital Logic Approach to OMR Implementation
//Gate-level Model

//D Flip Flop Module
module DFF (
    output Q,       
    output Qn,      
    input D,        
    input R);

    wire S, Rn; 

    not (Rn, R);
    nand (S, Rn, D); 
    nand (Q, S, Qn); 
    nand (Qn, Rn, Q);
endmodule

module XNOR (
    output O,     
    input I0,     
    input I1);
 
    wire w1;

    xor (w1,I0,I1);
    not (O,w1);
endmodule

// 4-bit D Flip-flop Module
module DFF_Array (
    output [3:0] Q,  
    input [3:0] D,   
    input R);
    
    DFF dff0 (.Q(Q[0]), .D(D[0]), .R(R));
    DFF dff1 (.Q(Q[1]), .D(D[1]), .R(R));
    DFF dff2 (.Q(Q[2]), .D(D[2]), .R(R));
    DFF dff3 (.Q(Q[3]), .D(D[3]), .R(R));
endmodule

module XNOR_Array (
    output [3:0] O,  
    input [3:0] I0,  
    input [3:0] I1);

    XNOR xn0 (.O(O[0]), .I0(I0[0]), .I1(I1[0]));
    XNOR xn1 (.O(O[1]), .I0(I0[1]), .I1(I1[1]));
    XNOR xn2 (.O(O[2]), .I0(I0[2]), .I1(I1[2]));
    XNOR xn3 (.O(O[3]), .I0(I0[3]), .I1(I1[3]));
endmodule

module AND (
    output O,       
    input I0,      
    input I1,      
    input I2,      
    input I3);

    and (O,I0,I1,I2,I3);
endmodule

module OMR_Machine(
    input [39:0] correct_answers,
    input [39:0] student_answers,
    input reset,    
    output reg [3:0] score_neg,              
    output reg [3:0] score);

    wire [3:0] stored_answers [9:0]; 
    wire [9:0] compare_results; 

    // 10 blocks of D Flip-Flops (4 flip-flops per block)
    DFF_Array dff_block0 (.Q(stored_answers[0]), .D({correct_answers[3:0]}), .R(reset));
    DFF_Array dff_block1 (.Q(stored_answers[1]), .D({correct_answers[7:4]}), .R(reset));
    DFF_Array dff_block2 (.Q(stored_answers[2]), .D({correct_answers[11:8]}), .R(reset));
    DFF_Array dff_block3 (.Q(stored_answers[3]), .D({correct_answers[15:12]}), .R(reset));
    DFF_Array dff_block4 (.Q(stored_answers[4]), .D({correct_answers[19:16]}), .R(reset));
    DFF_Array dff_block5 (.Q(stored_answers[5]), .D({correct_answers[23:20]}), .R(reset));
    DFF_Array dff_block6 (.Q(stored_answers[6]), .D({correct_answers[27:24]}), .R(reset));
    DFF_Array dff_block7 (.Q(stored_answers[7]), .D({correct_answers[31:28]}), .R(reset));
    DFF_Array dff_block8 (.Q(stored_answers[8]), .D({correct_answers[35:32]}), .R(reset));
    DFF_Array dff_block9 (.Q(stored_answers[9]), .D({correct_answers[39:36]}), .R(reset));

    // 10 blocks of XNOR gates (4 gates per block)
    wire [3:0] and_out [9:0]; 
    // Outputs from XNOR arrays for comparing

    XNOR_Array xn_block0 (.O(and_out[0]), .I0(student_answers[3:0]), .I1(stored_answers[0]));
    XNOR_Array xn_block1 (.O(and_out[1]), .I0(student_answers[7:4]), .I1(stored_answers[1]));
    XNOR_Array xn_block2 (.O(and_out[2]), .I0(student_answers[11:8]), .I1(stored_answers[2]));
    XNOR_Array xn_block3 (.O(and_out[3]), .I0(student_answers[15:12]), .I1(stored_answers[3]));
    XNOR_Array xn_block4 (.O(and_out[4]), .I0(student_answers[19:16]), .I1(stored_answers[4]));
    XNOR_Array xn_block5 (.O(and_out[5]), .I0(student_answers[23:20]), .I1(stored_answers[5]));
    XNOR_Array xn_block6 (.O(and_out[6]), .I0(student_answers[27:24]), .I1(stored_answers[6]));
    XNOR_Array xn_block7 (.O(and_out[7]), .I0(student_answers[31:28]), .I1(stored_answers[7]));
    XNOR_Array xn_block8 (.O(and_out[8]), .I0(student_answers[35:32]), .I1(stored_answers[8]));
    XNOR_Array xn_block9 (.O(and_out[9]), .I0(student_answers[39:36]), .I1(stored_answers[9]));

    // AND gates to combine outputs from each block
    AND and0 (.O(compare_results[0]), .I0(and_out[0][0]), .I1(and_out[0][1]), .I2(and_out[0][2]), .I3(and_out[0][3]));
    AND and1 (.O(compare_results[1]), .I0(and_out[1][0]), .I1(and_out[1][1]), .I2(and_out[1][2]), .I3(and_out[1][3]));
    AND and2 (.O(compare_results[2]), .I0(and_out[2][0]), .I1(and_out[2][1]), .I2(and_out[2][2]), .I3(and_out[2][3]));
    AND and3 (.O(compare_results[3]), .I0(and_out[3][0]), .I1(and_out[3][1]), .I2(and_out[3][2]), .I3(and_out[3][3]));
    AND and4 (.O(compare_results[4]), .I0(and_out[4][0]), .I1(and_out[4][1]), .I2(and_out[4][2]), .I3(and_out[4][3]));
    AND and5 (.O(compare_results[5]), .I0(and_out[5][0]), .I1(and_out[5][1]), .I2(and_out[5][2]), .I3(and_out[5][3]));
    AND and6 (.O(compare_results[6]), .I0(and_out[6][0]), .I1(and_out[6][1]), .I2(and_out[6][2]), .I3(and_out[6][3]));
    AND and7 (.O(compare_results[7]), .I0(and_out[7][0]), .I1(and_out[7][1]), .I2(and_out[7][2]), .I3(and_out[7][3]));
    AND and8 (.O(compare_results[8]), .I0(and_out[8][0]), .I1(and_out[8][1]), .I2(and_out[8][2]), .I3(and_out[8][3]));
    AND and9 (.O(compare_results[9]), .I0(and_out[9][0]), .I1(and_out[9][1]), .I2(and_out[9][2]), .I3(and_out[9][3]));

    wire [3:0] correct_count;
    wire [3:0] score_reset = {4{reset}};
    assign correct_count = compare_results[0] + compare_results[1] + compare_results[2] + compare_results[3] + compare_results[4] + compare_results[5] + compare_results[6] + compare_results[7] + compare_results[8] + compare_results[9]; 
   
    integer j;
    always @(*) begin
            if (reset) begin
                score = 4'b0;
                score_neg = 4'b0;
            end else begin
                score = 4'b0;
                score_neg = 4'b0;
                for (j = 0; j < 10; j = j + 1) begin
                    if (compare_results[j]) begin
                        score = score + 4'b0001; // Count correct answers
                    end else begin
                        score_neg = score_neg + 4'b0001; // Count wrong answers
                    end   
                end
                if(score >= score_neg) begin
                    score = score - score_neg;
                end else begin
                    score = 4'b0;
                end
            end
        end   
endmodule
```

### Testbench

#### Behavioral

```
module OMR_Machine_tb;
    reg [39:0] correct_answers; 
    reg [39:0] student_answers; 
    reg reset; 
    wire [3:0] score_neg;                 
    wire [3:0] score;           

    OMR_Machine uut (
        .correct_answers(correct_answers),
        .student_answers(student_answers),
        .reset(reset),
        .score_neg(score_neg),
        .score(score)
    );

    initial begin
        $dumpfile("S1-T14_behavioral.vcd");
        $dumpvars(0,OMR_Machine_tb);
        reset = 1;
        correct_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_1000; 
        student_answers = 40'b0000; 
        
        #10 reset = 0; 

        // Test Case 1: All correct answers
        student_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_1000; // Score = 10
        #10; 
        $display("Test Case 1: Score = %d", score); 

        // Test Case 2: 6 correct answers and 4 incorrect answers
        student_answers = 40'b0001_0010_0001_0100_0100_0010_0001_0010_1000_0001; // Score = 2
        #10; 
        $display("Test Case 2: Score = %d", score); 

        // Test Case 3: 8 correct answers and 2 incorrect answers
        student_answers = 40'b0001_0010_0010_0010_0100_0010_0001_1000_1000_1000; // Score = 6
        #10; 
        $display("Test Case 3: Score = %d", score); 

        // Test Case 4: 1 correct aanswer and 9 incorrect answers
        student_answers = 40'b1000_0100_0010_0001_0101_0010_0100_0010_0001_0010; // Score = 0
        #10; 
        $display("Test Case 4: Score = %d", score);

        // Test Case 5: 9 correct answers and 1 incorrect answers
        student_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_0001; // Score = 8
        #10; 
        $display("Test Case 5: Score = %d", score); 

        // Test Case 6: 5 correct and 5 incorrect 
        student_answers = 40'b1000_0001_0010_0100_1000_0010_0001_0100_1000_1000; // Score = 0    
        #10;
        $display("Test Case 6: Score = %d", score); 

        // Test Case 7: 5 correct and 5 incorrect
        student_answers = 40'b1000_0100_0010_0100_0001_0010_0001_0100_1000_1000; // Score = 0
        #10;
        $display("Test Case 7: Score = %d", score); 

        // Test Case 8: 9 correct and 1 incorrect
        student_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_0100; // Score = 8
        #10;
        $display("Test Case 8: Score = %d", score); 

        $finish;
    end
endmodule
```
#### Gate Level
```
module OMR_Machine_tb;

    reg [39:0] correct_answers;
    reg [39:0] student_answers;
    reg reset;
    wire [3:0] score_neg;                
    wire [3:0] score;          

    OMR_Machine uut (
        .correct_answers(correct_answers),
        .student_answers(student_answers),
        .reset(reset),
        .score_neg(score_neg),
        .score(score)
    );

    initial begin
        $dumpfile("S1-T14_gate.vcd");
        $dumpvars(0,OMR_Machine_tb);
        reset = 1;
        correct_answers = 40'b0001_0010_0010_0100_0001_0010_0001_1000_1000_1000;
        student_answers = 40'b0000;
       
        #10 reset = 0;

        // Test Case 1: All correct answers
        student_answers = 40'b0001_0010_0010_0100_0001_0010_0001_1000_1000_1000; // Score = 10
        #10;
        $display("Test Case 1: Score = %d", score); 

        // Test Case 2: 6 correct answers and 4 incorrect answers
        student_answers = 40'b1000_0010_0010_0100_0010_0100_0100_1000_1000_1000; // Score = 2
        #10;
        $display("Test Case 2: Score = %d", score); 

        // Test Case 3: 8 correct answers and 2 incorrect answers
        student_answers = 40'b0001_0010_0010_0100_0001_0010_0001_0010_0001_1000; // Score = 6
        #10;
        $display("Test Case 3: Score = %d", score); 

        // Test Case 4: 3 correct aanswer and 7 incorrect answers
        student_answers = 40'b1000_0100_0010_0100_0100_0010_0100_0010_0001_0010; // Score = 0
        #10;
        $display("Test Case 4: Score = %d", score);

        // Test Case 5: 9 correct answers and 1 incorrect answers
        student_answers = 40'b0001_0010_0010_1000_0001_0010_0001_1000_1000_1000; // Score = 8
        #10;
        $display("Test Case 5: Score = %d", score);

        // Test Case 6: 6 correct and 4 incorrect
        student_answers = 40'b1000_0001_0010_0100_1000_0010_0001_0100_1000_1000; // Score = 2
        #10;
        $display("Test Case 6: Score = %d", score); 

        // Test Case 7: 7 correct and 3 incorrect
        student_answers = 40'b1000_0100_0010_0100_0001_0010_0001_0100_1000_1000; // Score = 4
        #10;
        $display("Test Case 7: Score = %d", score); 

        // Test Case 8: 5 correct and 5 incorrect
        student_answers = 40'b0001_0010_0100_0100_0001_0010_0100_0100_0001_0010; // Score = 0
        #10;
        $display("Test Case 8: Score = %d", score); 

        $finish;
    end   
endmodule
```
</details>

<!-- Fifth Section -->
## References
<details>
  <summary>Detail</summary>

  ###


1. [Optical Mark Recognition (OMR)](https://dmohankumar.wordpress.com/2010/11/06/optical-mark-recognition-omr/)  
2. [Light Dependent Resistors (LDR) Basics](https://www.electronicsforu.com/technology-trends/learn-electronics/ldr-light-dependent-resistors-basics)  

</details>



