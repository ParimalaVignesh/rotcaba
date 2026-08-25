<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="ecg_denoiser_ip" top="ecg_denoiser">
  <files>
    <file name="../../tb/tb_denoiser.cpp" sc="0" tb="1" cflags=" -IC:/ecg_hls/include  -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="src/ecg_denoiser.cpp" sc="0" tb="false" cflags="-IC:/ecg_hls/include" blackbox="false" csimflags=""/>
    <file name="src/weights_denoiser.cpp" sc="0" tb="false" cflags="-IC:/ecg_hls/include" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="solution1" status="active"/>
    <solution name="solution1" status="active"/>
    <solution name="solution1" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation argv="">
    <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
