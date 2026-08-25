# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb/tb_classifier.cpp ../../../../src/ecg_classifier.cpp ../../../../src/weights_clf_L0_W.cpp ../../../../src/weights_clf_L0_b.cpp ../../../../src/weights_clf_L1_W.cpp ../../../../src/weights_clf_L1_b.cpp ../../../../src/weights_clf_L2_W.cpp ../../../../src/weights_clf_L2_b.cpp ../../../../src/weights_clf_L3_W.cpp ../../../../src/weights_clf_L3_b.cpp ../../../../src/weights_clf_L4_W.cpp ../../../../src/weights_clf_L4_b.cpp ../../../../src/weights_clf_L5_W.cpp ../../../../src/weights_clf_L5_b.cpp ../../../../src/weights_clf_L6_W.cpp ../../../../src/weights_clf_L6_b.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2022.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2022.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -IC:/ecg_hls/include -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_classifier.o: ../../../../tb/tb_classifier.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../tb/tb_classifier.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_classifier.d

$(ObjDir)/ecg_classifier.o: ../../../../src/ecg_classifier.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/ecg_classifier.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ecg_classifier.d

$(ObjDir)/weights_clf_L0_W.o: ../../../../src/weights_clf_L0_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L0_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L0_W.d

$(ObjDir)/weights_clf_L0_b.o: ../../../../src/weights_clf_L0_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L0_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L0_b.d

$(ObjDir)/weights_clf_L1_W.o: ../../../../src/weights_clf_L1_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L1_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L1_W.d

$(ObjDir)/weights_clf_L1_b.o: ../../../../src/weights_clf_L1_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L1_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L1_b.d

$(ObjDir)/weights_clf_L2_W.o: ../../../../src/weights_clf_L2_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L2_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L2_W.d

$(ObjDir)/weights_clf_L2_b.o: ../../../../src/weights_clf_L2_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L2_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L2_b.d

$(ObjDir)/weights_clf_L3_W.o: ../../../../src/weights_clf_L3_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L3_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L3_W.d

$(ObjDir)/weights_clf_L3_b.o: ../../../../src/weights_clf_L3_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L3_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L3_b.d

$(ObjDir)/weights_clf_L4_W.o: ../../../../src/weights_clf_L4_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L4_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L4_W.d

$(ObjDir)/weights_clf_L4_b.o: ../../../../src/weights_clf_L4_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L4_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L4_b.d

$(ObjDir)/weights_clf_L5_W.o: ../../../../src/weights_clf_L5_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L5_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L5_W.d

$(ObjDir)/weights_clf_L5_b.o: ../../../../src/weights_clf_L5_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L5_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L5_b.d

$(ObjDir)/weights_clf_L6_W.o: ../../../../src/weights_clf_L6_W.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L6_W.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L6_W.d

$(ObjDir)/weights_clf_L6_b.o: ../../../../src/weights_clf_L6_b.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/weights_clf_L6_b.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -IC:/ecg_hls/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/weights_clf_L6_b.d
