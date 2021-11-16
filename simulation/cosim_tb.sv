
`timescale 1 ns / 1 ns
`define NUM_CALLS 1

`define in_IN_SW_DAT  "sw/sobel_filter_in.in.sw.dat"
`define in_OUT_HW_DAT  "sw/sobel_filter_in.out.hw.dat"
`define out_IN_SW_DAT  "sw/sobel_filter_out.in.sw.dat"
`define out_OUT_HW_DAT  "sw/sobel_filter_out.out.hw.dat"


module cosim_tb ();

initial $display("Running SW/HW co-simulation...");

integer output_ports_finished = 0;
//integer mismatches = 0;

reg clk;
initial clk = 0;
always @(clk) clk <= #10 ~clk;

wire finish;
wire ready;

// start.
reg start;
// reset.
reg reset;
reg ready_TO_DUT_DS;
wire all_init;
initial begin : start_block
    integer i;
    integer calls;
    ready_TO_DUT_DS = 0;
    start = 0;
    calls = 0;
    reset = 1;
    @(negedge clk);
    reset = 0;
    @(posedge clk)
    while(calls < `NUM_CALLS) begin
        wait(all_init == 0)
        start = 1;
    	 ready_TO_DUT_DS = 1;
        @(posedge clk) #1;
        start = 0;
        wait (finish == 1)
    	 ready_TO_DUT_DS = 0;
        @(posedge clk)
        calls = calls + 1;
    end
end


integer cycle_count = 0;
always @ (posedge clk) begin
    if (reset)
        cycle_count <= 0;
    else if (!all_init)
        cycle_count <= cycle_count + 1;
end

wire [18 - 1:0] in_address_a;
wire [18 - 1:0] in_address_b;
wire in_write_en_a;
wire in_write_en_b;
wire in_read_en_a;
wire in_read_en_b;
wire [8 - 1:0] in_write_data_a;
wire [8 - 1:0] in_write_data_b;
wire [8 - 1:0] in_read_data_a;
wire [8 - 1:0] in_read_data_b;
wire [1 - 1:0] in_byte_en_a;
wire [1 - 1:0] in_byte_en_b;
wire [18 - 1:0] out_address_a;
wire [18 - 1:0] out_address_b;
wire out_write_en_a;
wire out_write_en_b;
wire out_read_en_a;
wire out_read_en_b;
wire [8 - 1:0] out_write_data_a;
wire [8 - 1:0] out_write_data_b;
wire [8 - 1:0] out_read_data_a;
wire [8 - 1:0] out_read_data_b;
wire [1 - 1:0] out_byte_en_a;
wire [1 - 1:0] out_byte_en_b;




sobel_filter_top DUT (
   .clk( clk ),
   .reset( reset ),
   .start( start ),
   .ready( ready ),
   .finish( finish ),
   // memory argument: in
   .in_address_a( in_address_a ),
   .in_address_b( in_address_b ),
   .in_read_en_a( in_read_en_a ),
   .in_read_en_b( in_read_en_b ),
   .in_read_data_a( in_read_data_a ),
   .in_read_data_b( in_read_data_b ),
   // memory argument: out
   .out_address_a( out_address_a ),
   .out_address_b( out_address_b ),
   .out_read_en_a( out_read_en_a ),
   .out_read_en_b( out_read_en_b ),
   .out_write_en_a( out_write_en_a ),
   .out_write_en_b( out_write_en_b ),
   .out_write_data_a( out_write_data_a ),
   .out_write_data_b( out_write_data_b ),
   .out_read_data_a( out_read_data_a ),
   .out_read_data_b( out_read_data_b )

);







ram_dual_port in (
	.clk( clk ),
	.clken( 1'b1 ),
	.address_a( in_address_a ),
	.write_en_a( in_write_en_a ),
	.write_data_a( in_write_data_a ),
	.byte_en_a( in_byte_en_a ),
	.read_data_a( in_read_data_a ),
	.address_b( in_address_b ),
	.write_en_b( in_write_en_b ),
	.write_data_b( in_write_data_b ),
	.byte_en_b( in_byte_en_b ),
	.read_data_b( in_read_data_b )
);
defparam in.width_a = 8;
defparam in.widthad_a = 18;
defparam in.width_be_a = 1;
defparam in.numwords_a = 262144;
defparam in.width_b = 8;
defparam in.widthad_b = 18;
defparam in.width_be_b = 1;
defparam in.numwords_b = 262144;
defparam in.latency = 1;
defparam in.uses_byte_enables = 0;

initial begin : initialize_memory_in
    integer fp;
    integer calls;
    string filename;
    calls = 0;
    @(posedge clk);
    wait(reset == 0);
    while(calls < `NUM_CALLS) begin
        wait (start == 1 && ready == 1);
        $display("Initializing memory in at cycle = %d", cycle_count);
        $sformat(filename, {`in_IN_SW_DAT,"%0d"}, calls);
        fp = $fopen(filename, "r");
        if(fp == 0) begin
            $display("Error: Could not open file '%s'", filename);
            $finish;
        end
        $readmemh(filename, in.genram.ram);
        $fclose(fp);
        @(posedge clk); #1;
        calls = calls + 1;
    end
end

initial begin : store_memory_in
    integer fp;
    integer calls;
    string filename;
    calls = 0;
    @(posedge clk);
    wait(reset == 0);
    while(calls < `NUM_CALLS) begin
        wait (finish == 1);
        $display("Storing memory contents in at cycle = %d", cycle_count);
        $sformat(filename, {`in_OUT_HW_DAT,"%0d"}, calls);
        $writememh(filename, in.genram.ram);
        calls = calls + 1;
        @(posedge clk); #1; 
    end
end
    

ram_dual_port out (
	.clk( clk ),
	.clken( 1'b1 ),
	.address_a( out_address_a ),
	.write_en_a( out_write_en_a ),
	.write_data_a( out_write_data_a ),
	.byte_en_a( out_byte_en_a ),
	.read_data_a( out_read_data_a ),
	.address_b( out_address_b ),
	.write_en_b( out_write_en_b ),
	.write_data_b( out_write_data_b ),
	.byte_en_b( out_byte_en_b ),
	.read_data_b( out_read_data_b )
);
defparam out.width_a = 8;
defparam out.widthad_a = 18;
defparam out.width_be_a = 1;
defparam out.numwords_a = 262144;
defparam out.width_b = 8;
defparam out.widthad_b = 18;
defparam out.width_be_b = 1;
defparam out.numwords_b = 262144;
defparam out.latency = 1;
defparam out.uses_byte_enables = 0;

initial begin : initialize_memory_out
    integer fp;
    integer calls;
    string filename;
    calls = 0;
    @(posedge clk);
    wait(reset == 0);
    while(calls < `NUM_CALLS) begin
        wait (start == 1 && ready == 1);
        $display("Initializing memory out at cycle = %d", cycle_count);
        $sformat(filename, {`out_IN_SW_DAT,"%0d"}, calls);
        fp = $fopen(filename, "r");
        if(fp == 0) begin
            $display("Error: Could not open file '%s'", filename);
            $finish;
        end
        $readmemh(filename, out.genram.ram);
        $fclose(fp);
        @(posedge clk); #1;
        calls = calls + 1;
    end
end

initial begin : store_memory_out
    integer fp;
    integer calls;
    string filename;
    calls = 0;
    @(posedge clk);
    wait(reset == 0);
    while(calls < `NUM_CALLS) begin
        wait (finish == 1);
        $display("Storing memory contents out at cycle = %d", cycle_count);
        $sformat(filename, {`out_OUT_HW_DAT,"%0d"}, calls);
        $writememh(filename, out.genram.ram);
        calls = calls + 1;
        @(posedge clk); #1; 
    end
end
    

assign all_init = 0;

assign all_done = 1;


initial begin : finish_condition
    integer finish_count;
    finish_count = 0;
    while (finish_count < `NUM_CALLS) begin
        if (finish)
            finish_count = finish_count + 1;
        wait(all_init == 0);
        @(posedge clk);
    end
    while (!all_done) begin
        @(posedge clk);
    end
    $display("Number of calls: %d", `NUM_CALLS);
    $display("Cycle latency: %d", cycle_count);
    //if (mismatches != 0) begin
        //$display("Error: %d mismatches between SW and HW simulation", mismatches);
        //$display("SW/HW co-simulation result: FAIL");
    //end
    $finish;
end

endmodule
    