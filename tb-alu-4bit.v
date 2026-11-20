module tb_alu_4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;
wire [3:0] ALU_Out;
wire CarryOut;

alu_4bit uut (
    .A(A), 
    .B(B), 
    .ALU_Sel(ALU_Sel), 
    .ALU_Out(ALU_Out), 
    .CarryOut(CarryOut)
);

initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_alu_4bit);

    
    A = 4'b0110; 
    B = 4'b0011;

    ALU_Sel = 3'b000; #10; 
    ALU_Sel = 3'b001; #10; 
    ALU_Sel = 3'b010; #10; 
    ALU_Sel = 3'b011; #10; 
    ALU_Sel = 3'b100; #10;

    $finish;
end

endmodule
