module top(
    input btnU, btnC,
    output [6:0] led
);

ripple_counter ripple_1(
    .clock(btnC),
    .reset(btnU),
    .Q0(led[0]),
    .Q1(led[1]),
    .Q2(led[2])
);

wire [2:0] output_modulo;
wire mod_out;

modulo_divider modulo_1(
    .clock(btnC),
    .reset(btnU),
    .Q(output_modulo),
    .mod_out(mod_out)
);

assign led[3] = output_modulo[0];
assign led[4] = output_modulo[1];
assign led[5] = output_modulo[2];

assign led[6] = mod_out;

endmodule
