
set TopModule "process_data"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix process_data_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvu11p:-flga2577:-1-e
set SourceFiles {sc {} c {../../FDHDChannelMapSP.cxx ../../kernel.cpp ../../myproject.cpp}}
set SourceFlags {sc {} c {{} {} {}}}
set DirectiveFile {}
set TBFiles {verilog {../../FDHDChannelMap_v1_visiblewires.txt ../../FDHDChannelMap_v1_wireends.txt ../../FDHD_CrateMap_v1.txt ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat ../../processAPA.cxx ../../../../workspace/processAPA/weights} bc {../../FDHDChannelMap_v1_visiblewires.txt ../../FDHDChannelMap_v1_wireends.txt ../../FDHD_CrateMap_v1.txt ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat ../../processAPA.cxx ../../../../workspace/processAPA/weights} vhdl {../../FDHDChannelMap_v1_visiblewires.txt ../../FDHDChannelMap_v1_wireends.txt ../../FDHD_CrateMap_v1.txt ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat ../../processAPA.cxx ../../../../workspace/processAPA/weights} sc {../../FDHDChannelMap_v1_visiblewires.txt ../../FDHDChannelMap_v1_wireends.txt ../../FDHD_CrateMap_v1.txt ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat ../../processAPA.cxx ../../../../workspace/processAPA/weights} cas {../../FDHDChannelMap_v1_visiblewires.txt ../../FDHDChannelMap_v1_wireends.txt ../../FDHD_CrateMap_v1.txt ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat ../../../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat ../../processAPA.cxx ../../../../workspace/processAPA/weights} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
