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

  > Explain the working of your model with the help of a functional table (compulsory) followed by the flowchart.
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



