module testbench;

    import uvm_pkg::*;
    import apb_pkg::*;
    import i2c_pkg::*;
    import common_pkg::*;


    logic clk, rstn;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rstn = 0;
        repeat(4) @(posedge clk);
        rstn = 1;
    end 

    apb_if apb_if(clk, rstn);
    i2c_if i2c_if_inst();

    i2c_dut(
        .PCLK(clk),
        .PRESETn(rstn),
        .PADDR(apb_if.paddr),
        .PWDATA(apb_if.pwdata),
        .PWRITE(apb_if.pwrite),
        .PSELx(apb_if.psel),
        .PENABLE(apb_if.penable),
        .PREADY(apb_if.pready),
        .PSLVERR(apb_if.pslverr),
        .PRDATA(apb_if.prdata),
        .INT_RX('0),
        .INT_TX('0),
        .SDA('0),
        .SCL('0)
    );

endmodule
