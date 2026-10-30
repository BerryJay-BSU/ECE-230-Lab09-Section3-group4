module mux(
    input [7:0] A, [7:0] B, [7:0] C, [7:0] D, [1:0] sel,
    output reg [7:0] Y
);

always @(*) begin
     Y = (
                sel == 2'b00 ? A :
                sel == 2'b01 ? B :
                sel == 2'b10 ? C :
                               D
                );
end
    // assign Y = (
    //             sel == 2'b00 ? A :
    //             sel == 2'b01 ? B :
    //             sel == 2'b10 ? C :
    //                            D
    //             );

endmodule