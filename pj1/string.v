`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:01 10/26/2018 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 

		reg tp = 0;
		reg [1:0] tim = 0,tem = 0;
		reg [7:0] temp = 0;
		
		assign out = tp;

		always@(posedge clk , posedge clr) begin
			if(in >= "0" && in <= "9") begin
				tem = 2'b01;
			end
			else if(in == "+" || in == "*") begin
				tem = 2'b10;
			end
			else begin 
				tem = 2'b00;
			end
			case(tim)
				2'b00: begin
					if(tem == 2'b01) begin
						tim = 2'b01;
						tp = 1;
					end
					else tim = 2'b11;
				end
				2'b01: begin
					if(tem == 2'b10) begin
						tim = 2'b10;
						tp = 0;
					end
					else tim = 2'b11;
					tp = 0;
				end
				2'b10: begin
					if(tem == 2'b01) begin
						tim = 2'b01;
						tp = 1;
					end
					else tim = 2'b11;
				end
				default : tp = 0;
			endcase
			
			if(clr == 1) begin
				tim = 2'b00;
				tp = 0;
			end
		end

endmodule
