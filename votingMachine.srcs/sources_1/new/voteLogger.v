`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2020 07:42:53 PM
// Design Name: 
// Module Name: voteLogger
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module voteLogger(
input clock,
input reset,
input mode,
input cand1_vote_valid,
input cand2_vote_valid,
input cand3_vote_valid,
input cand4_vote_valid,
output reg [7:0] cand1_vote_recvd,
output reg [7:0] cand2_vote_recvd,
output reg [7:0] cand3_vote_recvd,
output reg [7:0] cand4_vote_recvd
);


always @(posedge clock)
begin
    if(reset)
    begin
        cand1_vote_recvd <= 0;
        cand2_vote_recvd <= 0;
        cand3_vote_recvd <= 0;
        cand4_vote_recvd <= 0;
    end
    else
    begin
        if(cand1_vote_valid & mode==0)
            cand1_vote_recvd <= cand1_vote_recvd + 1;
        else if(cand2_vote_valid & mode==0)
            cand2_vote_recvd <= cand2_vote_recvd + 1;
        else if(cand3_vote_valid & mode==0)
            cand3_vote_recvd <= cand3_vote_recvd + 1;
        else if(cand4_vote_valid & mode==0)
            cand4_vote_recvd <= cand4_vote_recvd + 1;
    end
end


endmodule
