module PWM (
    input wire clk,           // Clock input
    input wire rst,           // Reset input
    input wire [7:0] duty_cycle, // 8-bit duty cycle input (0 to 255)
    output wire pwm_out       // PWM output
);

reg [7:0] counter;
reg pwm_output;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        counter <= 8'b00000000;
        pwm_output <= 1'b0;
    end else begin
        counter <= counter + 1'b1;
        if (counter < duty_cycle) begin
            pwm_output <= 1'b1;
        end else begin
            pwm_output <= 1'b0;
        end
    end
end

assign pwm_out = pwm_output;

endmodule

