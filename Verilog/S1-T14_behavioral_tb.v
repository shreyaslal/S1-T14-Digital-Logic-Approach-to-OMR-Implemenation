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
        correct_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_1000; 
        student_answers = 40'b0000; 
        
        #10 reset = 0; 

        // Test Case 1: All correct answers
        student_answers = 40'b0001_0010_0010_0100_0100_0100_0001_1000_1000_1000; // Score = 10
        #10; 
        $display("Test Case 1: Score = %d", score); 

        // Test Case 2: 
        student_answers = 40'b0001_0010_0001_0100_0100_0010_0001_0010_1000_0001; // Score = 2
        #10; 
        $display("Test Case 2: Score = %d", score); 

        // Test Case 3:
        student_answers = 40'b0001_0010_0010_0010_0100_0010_0001_1000_1000_1000; // Score = 6
        #10; 
        $display("Test Case 3: Score = %d", score); 

        // Test Case 4: 
        student_answers = 40'b1000_0100_0010_0001_0101_0010_0100_0010_0001_0010; // Score = 0
        #10; 
        $display("Test Case 4: Score = %d", score);

        // Test Case 5:
        student_answers = 40'b0001_0010_0010_0100_0100_0001_0010_0100_1000_0010; // Score = 2
        #10; 
        $display("Test Case 5: Score = %d", score); 

        $finish;
    end
endmodule