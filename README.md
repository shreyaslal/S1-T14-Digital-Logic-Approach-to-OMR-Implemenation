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
The world is increasingly driven by automated systems, from industry to education, where accuracy, speed, and efficiency are paramount. Similarly, in modern education, a fast, accurate, and automated evaluation of multiple-choice questions (MCQs) is essential to managing large-scale assessments efficiently. Manual grading is both time-consuming and prone to errors. Inspired by this challenge, we set out to build an Optical Mark Recognition (OMR) machine using digital logic that is not only precise and efficient but also cost-effective. Our motivation stems from the desire to create a practical solution that can be easily implemented in educational institutions with limited resources, providing them with a reliable tool for automating the grading process.

### Problem Statement
The traditional and manual evaluation of hundreds or thousands of OMR answer sheets leads to delays and increased chances of human error, particularly in large-scale examinations. Existing solutions, though effective, are often expensive or too complex for smaller institutions to adopt. Our goal is to design a small-scale and hardware-based OMR machine using basic digital logic circuits, capable of scanning the answer sheets, comparing the responses with pre-stored solutions, and grading the student responses in real-time. Our system will display the total score, factoring in negative marking, ensuring an immediate and accurate evaluation.

### Features
- **Digital Memory Storage:** Correct answers are stored in D flip-flops, allowing the machine to retain reference answers for each question and enabling fast, real-time comparisons with scanned responses. The stored answers can also be easily reset or updated, providing flexibility for new sets of exams or corrections.

- **Small-Scale OMR Scanner:** A built-in scanner unit allows the user to insert a hardcopy OMR sheet, where the system uses light-dependent resistors (LDRs) to detect marked answers. This scanned data is processed sequentially, question by question.

- **Multiplexing for Question Handling:** A 16-to-1 multiplexer is used to select the correct stored answer from memory based on the question number, enabling seamless transitions during the scanning process.

- **Real-Time Comparison and Evaluation:** The scanned answers are compared to the stored correct answers using a digital comparator. For each correct match, a BCD counter tracks the score, incrementing the total. 

- **Negative Marking:** We use two counters: one to track correctly answered questions and another to track incorrect answers. The final score is then calculated by factoring in both positive points for correct answers and deductions for incorrect ones, ensuring an accurate total score.

- **Instant Result Display:** After the scanning process is complete, the total score and the positive score obtained by the student are displayed on seven-segment displays, providing immediate feedback on the student’s performance.

This project combines the simplicity of digital logic with practical hardware design, offering a fully functional OMR machine capable of scanning and evaluating hardcopy answer sheets. With its affordable and scalable design, this solution is well-suited for educational institutions looking for a reliable and efficient way to automate MCQ grading.

### Block Diagram

![Block Diagram](https://github.com/user-attachments/assets/22be5cba-bfe5-49bf-a465-d84a24e0d4fe)




</details>

<!-- Third Section -->
## Working
<details>
  <summary>Detail</summary>

  > Explain the working of your model with the help of a functional table (compulsory) followed by the flowchart.
</details>

<!-- Fourth Section -->
## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  > Update a neat logisim circuit diagram
</details>

<!-- Fifth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>

  > Neatly update the Verilog code in code style only.
</details>



