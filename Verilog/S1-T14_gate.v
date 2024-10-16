//Design of Digital Systems Mini-Project
//S1 Team 14 - Digital Logic Approach to OMR Implementation
//Gate-level Model


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
    output reg [3:0] score1,              
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
    wire [3:0] and_out [9:0]; // Outputs from XNOR arrays
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
    assign correct_count = compare_results[0] + compare_results[1] + compare_results[2] + compare_results[3] +
                           compare_results[4] + compare_results[5] + compare_results[6] + compare_results[7] +
                           compare_results[8] + compare_results[9]; 


    always @(posedge reset or posedge correct_count) begin
        if (reset) begin
            score <= 0; 
            score1 <= 0;
        end else begin
            score <= correct_count; 
            score1 <= correct_count;
        end
    end
        
endmodule

