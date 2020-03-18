module UI
(
	input 				iClk,
	input 		[1:0] iSW,
	input 		[9:0] iAngle,
	output reg [31:0] PwmOut			
);

`define MAX_Angle 180
`define MIN_Angle 0
`define DUR_CLOCK_NUM ( 50000000/50)           // clock count in 20 ms
`define DEGREE_MAX    ( `DUR_CLOCK_NUM*25/200) // 2.5 ms 125000
`define DEGREE_MIN    ( `DUR_CLOCK_NUM*5/200)  // 0.5 ms 25000
`define AdjAngle ((`DEGREE_MAX - `DEGREE_MIN)/180)

reg [21:0] count;

reg [9:0] oAngle = 100;

always@(posedge iClk)
begin

    if(oAngle < iAngle)
    begin
			     if(count[15] & (oAngle <= iAngle))
				  begin
				    count <= 0;
					 oAngle <= oAngle + 1;
				  end
				  else
				    count <= count + iSW + 1;
			end
	else
	if(oAngle > iAngle)
	begin
			     if(count[15] & (oAngle >= iAngle))
				  begin
				    count <= 0;
					 oAngle <= oAngle - 1;
				  end
				  else
				    count <= count + iSW + 1;
			   end
		PwmOut <= (((`DEGREE_MAX - `DEGREE_MIN)/1024)*oAngle)+`DEGREE_MIN;
end

endmodule 
