@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim Four_to_One_Mux_TB_behav -key {Behavioral:sim_1:Functional:Four_to_One_Mux_TB} -tclbatch Four_to_One_Mux_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
