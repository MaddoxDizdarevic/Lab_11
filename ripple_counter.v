module ripple_counter(
    input clock, reset,
    output Q0, Q1, Q2
);
    
wire q0, q1, q2;
wire notq0, notq1, notq2;    

    t_flipflop inst_0 (
        .T(1'b1),
        .clock(clock),
        .reset(reset),
        .Q(q0),
        .NotQ(notq0)
    );
    
    t_flipflop inst_1 (
        .T(1'b1),
        .clock(q0),
        .reset(reset),
        .Q(q1),
        .NotQ(notq1)
    );
    
    t_flipflop inst_2 (
        .T(1'b1),
        .clock(q1),
        .reset(reset),
        .Q(q2),
        .NotQ(notq2)
    );
    

assign Q0 = q0;
assign Q1 = q1;
assign Q2 = q2;
    
endmodule
