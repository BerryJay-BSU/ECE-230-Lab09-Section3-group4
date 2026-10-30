module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
);

    always @(E, D) begin 
        if (E & ~D)
            Q <= 0;
        else if (E & D)
            Q <= 1;
    end

    assign NotQ = ~Q;

endmodule