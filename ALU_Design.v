module ALU_4BIT (
    input [3:0] a, b,
    input en,
    input [2:0] opcode,
    output reg [4:0] result
);
always @(*) begin
    if (!en) begin
        result = 5'b00000; 
    end 
    else begin
        case (opcode)
            3'b000: result = a + b;  // Addition
            3'b001: result = a - b;  // Subtraction
            3'b010: result = {1'b0, a & b}; // AND operation
            3'b011: result = {1'b0, a | b}; // OR operation
            3'b100: result = a + 1;  // Increment
            3'b101: result = a - 1;  // Decrement
            3'b110: result = {a, 1'b0}; // Left Shift 
            3'b111: result = {1'b0, a[3:1]}; // Right Shift 
            default: result = 5'b00000; 
        endcase
    end
end
endmodule
