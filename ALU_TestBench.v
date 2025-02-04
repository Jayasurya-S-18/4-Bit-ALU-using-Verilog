module ALU_TB;
    reg [3:0]a,b;
    reg [2:0]opcode;
    reg en;
    wire [4:0]result;

    ALU_4BIT dut(.a(a),.b(b),.opcode(opcode),.en(en),.result(result));

    initial begin
        en=0;
        a=4'b010;
        b=4'b011;
        #10;
        en=1;
        opcode=3'b000;#10;
        opcode=3'b001;#10;
        opcode=3'b010;#10;
        opcode=3'b011;#10;
        opcode=3'b100;#10;
        opcode=3'b101;#10;
        opcode=3'b110;#10;
        opcode=3'b111;#10;
        $stop;
    end
    initial begin
        $monitor("a=%0b|b=%0b => result=%0b",a,b,opcode);
    end
endmodule

