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
4-bit D-Flip Flops are used to store the correct answers, with each question having its own
corresponding D-Flip Flop to store the answer. This system is implemented for up to ten questions,
but the number of questions can be scaled as needed. Additionally, we can choose to evaluate fewer
than ten questions for a particular exam if required.
There are four 16:1 multiplexers, one for each option, with the question number currently being
evaluated as their select line. These multiplexers determine whether the corresponding option is
correct for the question being evaluated.
We have developed a small-scale OMR (Optical Mark Recognition) sheet scanner using LightDependent Resistors (LDRs) and LEDs. These components are positioned on opposite sides—LEDs
on top and LDRs on the bottom—where the answer sheet is inserted for scanning. The answer sheet
includes four options for each question, and the correct option must be shaded using a pencil. When
a circle corresponding to an option is shaded, less light from the LEDs passes through the shaded
option compared to the unshaded options. This causes an increase in the resistance of the LDR
associated with the marked option. A circuit is then designed to detect this change in resistance and
generate an ”ON” signal, indicating that the option is marked. This process is repeated for each
question.
To help the circuit detect when responses for the next question are being scanned, a fifth circle
is always shaded. As the paper slides forward for the next question, the LDR beneath this shaded
circle temporarily detects an unshaded area between questions, resulting in reduced resistance. This
fluctuation serves as a clock signal for a counter that tracks the number of questions evaluated.
Finally, the correct answer, retrieved from a multiplexer, is compared to the scanned answer
using a 4-bit comparator. If the marked answer is correct, a counter is incremented to track the
number of correctly answered questions. A real-time display using a 7-segment display shows the
count of correct answers.
Additionally, a separate counter records the number of incorrect answers. A 4-bit subtractor
is then used to calculate the total score by subtracting the number of incorrect answers from the
number of correct ones. If the result is negative, the final score is displayed as zero. The score is
shown on a 7-segment display.

</details>

<!-- Fifth Section -->
## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  > Update a neat logisim circuit diagram
</details>

<!-- Sixth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>

  > Neatly update the Verilog code in code style only.
</details>



