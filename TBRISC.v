`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2020 11:09:57 AM
// Design Name: 
// Module Name: TBRISC
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


module TBRISC();
reg clk1,clk2;
wire[31:0]ID_EX_A,ID_EX_B,ID_EX_IMM,MEM_WB_ALUOUT,MEM_WB_LMD,PC,IF_ID_NPC;
RISC t1(clk1,clk2,ID_EX_A,ID_EX_B,ID_EX_IMM,MEM_WB_ALUOUT,MEM_WB_LMD,PC,IF_ID_NPC);
 integer k;
initial
begin
 clk1=0;clk2=0;
 repeat(20)
  begin
   #5 clk1=1; #5 clk2=0;
   #5 clk2=1; #5 clk1=0;
   end
  end
  initial
  begin
    for(k=0;k<32;k=k+1)
    t1.Reg[k]=k;
    t1.Mem[0]=32'h2801000a;//ADD R1,R0,10
    t1.Mem[1]=32'h28020014;//ADDI R2,R0,20
    t1.Mem[2]=32'h28030019;//ADDI R3,R0,25
    t1.Mem[3]=32'h0ce77800;//OR R7,R7,R7---DUMMY
    t1.Mem[4]=32'h0ce77800;//OR R7,R7,R7---DUMMY
    t1.Mem[5]=32'h00222000;//ADD R4,R1,R2
    t1.Mem[6]=32'h0ce77800;//OR R7,R7,R7---DUMMY
    t1.Mem[7]=32'h00832800;//ADD R5,R4,R3
    t1.Mem[8]=32'h28010078;//ADDI R1,R0,120
    t1.Mem[9]=32'h0c631800;//OR R3,R3,R3;----dummy
    t1.Mem[10]=32'h20220000;//LW R2,0(R1);
    t1.Mem[11]=32'h0c631800;//OR R3,R3,R3;---dummy
    t1.Mem[12]=32'h2842002d;//ADDI R2,R2,45
    t1.Mem[13]=32'h0c631800;//OR R3,R3,R3;---dummy
    t1.Mem[14]=32'h24220001;//SW R2,1,R1
    t1.Mem[120]=85;
    t1.Mem[15]=32'hfc000000;//HLT
    t1.Mem[84]=84;
    t1.HALTED =0;
    t1.PC=0;
    t1.TAKEN_BRANCH =0;
  end
endmodule
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                