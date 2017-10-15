module MUX(Output, Input0, Input1, Input2, Input3, Selector);
    output [31:0] Output;
    input [31:0] Input0, Input1, Input2, Input3;
    input [1:0] Selector;
    reg [31:0] Output;
	 
    always @ (Input0 or Input1 or Input2 or Input3 or Selector) begin
        case (Selector)
            0: Output = Input0;
            1: Output = Input1;
            2: Output = Input2;
            3: Output = Input3;
        endcase
    end
endmodule