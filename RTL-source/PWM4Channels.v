module PWM4Channels (
    input wire clk,           // Clock input
    input wire rst,           // Reset input
    input wire [7:0] duty_cycle_ch0, // Duty cycle for channel 0
    input wire [7:0] duty_cycle_ch1, // Duty cycle for channel 1
    input wire [7:0] duty_cycle_ch2, // Duty cycle for channel 2
    input wire [7:0] duty_cycle_ch3, // Duty cycle for channel 3
    output wire pwm_out_ch0,   // PWM output for channel 0
    output wire pwm_out_ch1,   // PWM output for channel 1
    output wire pwm_out_ch2,   // PWM output for channel 2
    output wire pwm_out_ch3    // PWM output for channel 3
);

wire pwm_out0, pwm_out1, pwm_out2, pwm_out3;

PWM pwm0 (.clk(clk), .rst(rst), .duty_cycle(duty_cycle_ch0), .pwm_out(pwm_out0));
PWM pwm1 (.clk(clk), .rst(rst), .duty_cycle(duty_cycle_ch1), .pwm_out(pwm_out1));
PWM pwm2 (.clk(clk), .rst(rst), .duty_cycle(duty_cycle_ch2), .pwm_out(pwm_out2));
PWM pwm3 (.clk(clk), .rst(rst), .duty_cycle(duty_cycle_ch3), .pwm_out(pwm_out3));

assign pwm_out_ch0 = pwm_out0;
assign pwm_out_ch1 = pwm_out1;
assign pwm_out_ch2 = pwm_out2;
assign pwm_out_ch3 = pwm_out3;

endmodule

