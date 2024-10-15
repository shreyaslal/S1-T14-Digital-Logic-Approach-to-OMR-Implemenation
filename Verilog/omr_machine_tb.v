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
        student_answers = 40'b0001_0010_0011_0100_0101_0110_0111_1000_1001_1010; // All correct
        #10; 
        $display("Test Case 1: Score = %d", score); // Display score

        // Test Case 2: 4 correct answers
        student_answers = 40'b0001_0010_0011_0100_0000_0110_0111_0000_1001_0000; // score - 4
        #10; 
        $display("Test Case 2: Score = %d", score); // Display score

        // Test Case 3: 6 correct answers
        student_answers = 40'b0001_0010_0011_0100_0101_0110_0111_0000_1001_0000; // score - 6
        #10; 
        $display("Test Case 3: Score = %d", score); // Display score

        // Test Case 4: 2 correct answers
        student_answers = 40'b1000_0100_0010_0001_0101_0110_0100_0010_0001_0010; // score - 0
        #10; 
        $display("Test Case 4: Score = %d", score); // Display score

        // Test Case 5: No correct answers
        student_answers = 40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_0000; // score - 0
        #10; 
        $display("Test Case 5: Score = %d", score); // Display score

        $finish;
    end

endmodule