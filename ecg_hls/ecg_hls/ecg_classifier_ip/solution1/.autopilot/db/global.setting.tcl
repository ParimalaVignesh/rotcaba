
set TopModule "ecg_classifier"
set ClockPeriod 13
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix ecg_classifier_
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
set TargetInfo xc7z030:-sbg485:-2
set SourceFiles {sc {} c {../../src/ecg_classifier.cpp ../../src/weights_clf_L0_W.cpp ../../src/weights_clf_L0_b.cpp ../../src/weights_clf_L1_W.cpp ../../src/weights_clf_L1_b.cpp ../../src/weights_clf_L2_W.cpp ../../src/weights_clf_L2_b.cpp ../../src/weights_clf_L3_W.cpp ../../src/weights_clf_L3_b.cpp ../../src/weights_clf_L4_W.cpp ../../src/weights_clf_L4_b.cpp ../../src/weights_clf_L5_W.cpp ../../src/weights_clf_L5_b.cpp ../../src/weights_clf_L6_W.cpp ../../src/weights_clf_L6_b.cpp}}
set SourceFlags {sc {} c {-IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include -IC:/ecg_hls/include}}
set DirectiveFile C:/ecg_hls/ecg_classifier_ip/solution1/solution1.directive
set TBFiles {verilog ../../tb/tb_classifier.cpp bc ../../tb/tb_classifier.cpp vhdl ../../tb/tb_classifier.cpp sc ../../tb/tb_classifier.cpp cas ../../tb/tb_classifier.cpp c {}}
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
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
