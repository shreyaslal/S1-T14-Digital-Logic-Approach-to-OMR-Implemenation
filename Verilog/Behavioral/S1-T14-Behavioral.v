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