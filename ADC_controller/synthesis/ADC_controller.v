// ADC_controller.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module ADC_controller (
		input  wire        CLOCK, //      clk.clk
		output wire [11:0] CH0,   // readings.CH0
		output wire [11:0] CH1,   //         .CH1
		output wire [11:0] CH2,   //         .CH2
		output wire [11:0] CH3,   //         .CH3
		output wire [11:0] CH4,   //         .CH4
		output wire [11:0] CH5,   //         .CH5
		output wire [11:0] CH6,   //         .CH6
		output wire [11:0] CH7,   //         .CH7
		input  wire        RESET  //    reset.reset
	);

	ADC_controller_adc_mega_0 #(
		.board          ("DE10-Lite"),
		.board_rev      ("Autodetect"),
		.tsclk          (5),
		.numch          (5),
		.max10pllmultby (1),
		.max10plldivby  (5)
	) adc_mega_0 (
		.CLOCK    (CLOCK), //      clk.clk
		.RESET    (RESET), //    reset.reset
		.CH0      (CH0),   // readings.export
		.CH1      (CH1),   //         .export
		.CH2      (CH2),   //         .export
		.CH3      (CH3),   //         .export
		.CH4      (CH4),   //         .export
		.CH5      (CH5),   //         .export
		.CH6      (CH6),   //         .export
		.CH7      (CH7),   //         .export
		.ADC_SCLK (),      // (terminated)
		.ADC_CS_N (),      // (terminated)
		.ADC_DOUT (1'b0),  // (terminated)
		.ADC_DIN  ()       // (terminated)
	);

endmodule
