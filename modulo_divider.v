module modulo_divider(
    input clock, reset,
    output [2:0] Q,
    output mod_out
);

wire q0, q1, q2;
wire output0, output1, output2;
wire carry0, carry1;

wire resetmod;
assign resetmod = (q2 & q1 & ~q0);

wire rst;
assign rst = (resetmod | (reset == 1'b1)) ? 1'b1 : 1'b0;

full_adder f_inst0 (
    .A(q0),
    .B(1'b1),
    .Cin(1'b0),
    .Y(output0),
    .Cout(carry0)
);

full_adder f_inst1 (
    .A(q1),
    .B(1'b0),
    .Cin(carry0),
    .Y(output1),
    .Cout(carry1)
);

full_adder f_inst2 (
    .A(q2),
    .B(1'b0),
    .Cin(carry1),
    .Y(output2),
    .Cout()
);

d_flipflop d_inst0 (
    .D(output0),
    .clock(clock),
    .reset(rst),
    .Q(q0),
    .NotQ()
);

d_flipflop d_inst1 (
    .D(output1),
    .clock(clock),
    .reset(rst),
    .Q(q1),
    .NotQ()
);

d_flipflop d_inst2 (
    .D(output2),
    .clock(clock),
    .reset(rst),
    .Q(q2),
    .NotQ()
);



t_flipflop t_inst1(
    .T(resetmod),
    .clock(clock),
    .Q(mod_out),
    .NotQ()
);


assign Q = {q2, q1, q0};

endmodule