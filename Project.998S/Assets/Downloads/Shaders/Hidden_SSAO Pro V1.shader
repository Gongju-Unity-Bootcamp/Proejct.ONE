//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/SSAO Pro V1" {
Properties {
_MainTex ("", 2D) = "white" { }
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 45514
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 96073
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 173458
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 225962
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 319244
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_VERY_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_LOW" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_MEDIUM" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_HIGH" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SAMPLES_ULTRA" "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 333700
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 423763
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 518666
Program "vp" {
SubProgram "d3d9 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HIGH_PRECISION_DEPTHMAP_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 534921
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}