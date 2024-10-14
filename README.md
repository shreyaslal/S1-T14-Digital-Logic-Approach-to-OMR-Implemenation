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
![img](https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/blob/7b0b968147196d3cd378287562b7e4c58215e3ec/Snapshots/truthtable.png)

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
   The <a href="https://github.com/shreyaslal/Team-S1-T14-for-DDS-Miniproject-/tree/main/Logisim">Verilog</a> folder the main file and the test bench file along with the output file.
###

### Modules

```
//Design of Digital Systems Mini Project
//S1 Team 14 - Digital Logic Approach to OMR Implementation

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
    output equal     
);
    assign equal = (A == B);
endmodule

// OMR Machine Module
module OMR_Machine(
    input [39:0] correct_answers, 
    input [39:0] student_answers, 
    input reset,    
    output reg [3:0] score1,              
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
            score = 4'b0; // Reset score
            score1 = 4'b0;
        end else begin
            score = 4'b0; // Initialize score
            score1 = 4'b0;
            for (j = 0; j < 10; j = j + 1) begin
                if (compare_results[j]) begin
                    score = score + 4'b0001; // Count correct answers
                end else begin
                    score1 = score1 + 4'b0001;
                end   
            end
            if(score >= score1) begin
                score = score - score1;
            end else begin
                score = 4'b0;
            end
        end
    end
endmodule
```

### Testbench

```
module OMR_Machine_tb;
    reg [39:0] correct_answers; 
    reg [39:0] student_answers; 
    reg reset; 
    wire [3:0] score1;                 
    wire [3:0] score;           

    OMR_Machine uut (
        .correct_answers(correct_answers),
        .student_answers(student_answers),
        .reset(reset),
        .score1(score1),
        .score(score)
    );

    initial begin
        reset = 1;
        correct_answers = 40'b0001_0010_0011_0100_0101_0110_0111_1000_1001_1010; 
        student_answers = 40'b0000; 
        
        #10 reset = 0; 

        // Test Case 1: All correct answers
        student_answers = 40'b0001_0010_0011_0100_0101_0110_0111_1000_1001_1010; // Score = 10
        #10; 
        $display("Test Case 1: Score = %d", score); // Display score

        // Test Case 2: 7 correct answers and 3 incorrect answers
        student_answers = 40'b0001_0010_0011_0100_0000_0110_0111_0000_1001_0000; // Score = 4
        #10; 
        $display("Test Case 2: Score = %d", score); // Display score

        // Test Case 3: 8 correct answers and 2 incorrect answers
        student_answers = 40'b0001_0010_0011_0100_0101_0110_0111_0000_1001_0000; // Score = 6
        #10; 
        $display("Test Case 3: Score = %d", score); // Display score

        // Test Case 4: 2 correct answers and 8 incorrect Answers
        student_answers = 40'b1000_0100_0010_0001_0101_0110_0100_0010_0001_0010; // Score = 0
        #10; 
        $display("Test Case 4: Score = %d", score); // Display score

        // Test Case 5: Not Attempted
        student_answers = 40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_0000; // Score = 0
        #10; 
        $display("Test Case 5: Score = %d", score); // Display score

        $finish;
    end
endmodule
```

</details>



