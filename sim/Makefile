#####################################################################################
##																					#
##																					#
##						This file created by Nhat Nguyen							#
##																					#
##																					#
#####################################################################################
# Makefile for QuestaSim

# Variables
VSIM = vsim
VLOG = vlog
VLIB = vlib
VMAP = vmap

WORK = work
TOP = testbench
TEST ?= apb_base_test  # Default test, override with make sim TEST=<test_name>

# Compilation target
compile:
	$(VLIB) $(WORK)
	$(VLOG) -sv -f compile.f

# Simulation target
sim:
	$(VSIM) -c -do "run -all; quit" -voptargs=+acc $(TOP) +UVM_TESTNAME=$(TEST)

# Clean target
clean:
	rm -rf $(WORK) transcript vsim.wlf

# Default target
all: compile sim
