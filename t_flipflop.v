module t_flipflop(
    input T, clock, reset,
    output Q, NotQ
);

wire D, outputQ, outputNotQ;

assign D = T ^ outputQ;

    d_flipflop t_flip (
        .D(D),
        .clock(clock),
        .reset(reset),
        .Q(outputQ),
        .NotQ(outputNotQ)
    );
    
assign Q = outputQ;
assign NotQ = outputNotQ;


endmodule