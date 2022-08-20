module ALU(
		input signed[31:0]reg1,
		input signed[31:0]reg2,
		input [2:0]x,
		input branch,
		input rst,
		input clk,
		output reg [1:0]sign,
		output reg cout,
		output reg [31:0]result
    );
	 wire [31:0]sum;
	 wire carry;

	 cla_32_bit add(reg1,reg2,1'b0,sum,carry);
	 
	 always@(posedge rst or posedge clk)
		 begin
			if(rst) begin cout=0;
			end
			else begin
				#0.2;
				if(((~x[1])&(~x[0])&(~branch)&clk)) 
					begin 
					cout =carry;
					end
			end
		 end
	
	 always@* begin
	 	if(~x[2]) begin
			if((~x[1])&(~x[0]))begin
				if(~branch) 
				begin
					result = sum;
				end else result=reg2;
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
				
			end else if((~x[1])&(x[0]))
			begin
				result = ~reg2+1;
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);

			end else if((x[1])&(~x[0]))
			begin
				result = reg1&reg2;
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
			end else
			begin
				 result=reg1^reg2;
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
			end 
			
		end else begin 
			if((~x[1])&(x[0])) begin
				result = (reg1<<reg2);
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
			end else if((x[1])&(x[0])) begin
				result = (reg1>>reg2);
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
			end else begin
				result = (reg1>>>reg2);
				sign[1]=(reg1==0);
				sign[0]=(reg1[31]==1);
			end

		end
	end
		
endmodule