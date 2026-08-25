:: ==============================================================
:: Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
:: Tool Version Limit: 2019.12
:: Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
:: ==============================================================

@echo off

C:/Xilinx/Vivado/2022.2/bin/vivado  -notrace -mode batch -source ipi_example.tcl -tclargs xc7z030-sbg485-2 ../MyOrg_ECG_ecg_denoiser_1_0.zip
