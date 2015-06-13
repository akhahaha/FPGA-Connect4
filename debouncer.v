`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:09 05/07/2015 
// Design Name: 
// Module Name:    debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
    input dbfreq,
    input btn_in,
    output btn_out
    );

reg [1:0] btn_buffer;
assign btn_out = btn_buffer[0];

always @(posedge dbfreq or posedge btn_in) begin
    if (btn_in)
        btn_buffer <= 2'b11;
    else
        btn_buffer <= {1'b0, btn_buffer[1]};
    end

endmodule
