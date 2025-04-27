`ifndef I2C_PKG_SV
`define I2C_PKG_SV

package i2c_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "agent/i2c_transaction.sv"
  `include "agent/i2c_sequencer.sv"
  `include "agent/i2c_driver.sv"
  `include "agent/i2c_monitor.sv"
  `include "env/i2c_agent.sv"
  `include "env/i2c_scoreboard.sv"
  `include "env/i2c_env.sv"
  `include "sequences/i2c_base_sequence.sv"

endpackage: i2c_pkg

`endif // I2C_PKG_SV
