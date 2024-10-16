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

        // Test Case 1:
        student_answers = 40'b0001_0010_0010_0100_0001_0010_0001_1000_1000_1000; // Score = 10
        #10;
        $display("Test Case 1: Score = %d", score); 

        // Test Case 2:
        student_answers = 40'b1000_0010_0010_0100_0010_0100_0100_1000_1000_1000; // Score = 2
        #10;
        $display("Test Case 2: Score = %d", score); 

        // Test Case 3:
        student_answers = 40'b0001_0010_0010_0100_0001_0010_0001_0010_0001_1000; // Score = 6
        #10;
        $display("Test Case 3: Score = %d", score); 

        // Test Case 4:
        student_answers = 40'b1000_0100_0010_0100_0100_0010_0100_0010_0001_0010; // Score = 0
        #10;
        $display("Test Case 4: Score = %d", score);

        // Test Case 5:
        student_answers = 40'b0001_0010_0010_1000_0001_0010_0001_1000_1000_1000; // Score = 8
        #10;
        $display("Test Case 5: Score = %d", score);

        // Test Case 6: 
        student_answers = 40'b1000_0001_0010_0100_1000_0010_0001_0100_1000_1000; // Score = 2
        #10;
        $display("Test Case 6: Score = %d", score); 

        // Test Case 7: 
        student_answers = 40'b1000_0100_0010_0100_0001_0010_0001_0100_1000_1000; // Score = 4
        #10;
        $display("Test Case 7: Score = %d", score); 

        // Test Case 8: 
        student_answers = 40'b0001_0010_0100_0100_0001_0010_0100_0100_0001_0010; // Score = 0
        #10;
        $display("Test Case 8: Score = %d", score); 

        $finish;
    end
    
endmodule
