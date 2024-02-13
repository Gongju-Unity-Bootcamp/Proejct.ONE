//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/FadeToColor" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_Color ("Color", Color) = (0,0,0,1)
_Alpha ("Alpha", Range(0, 1)) = 0
}
SubShader {
 Pass {
  GpuProgramID 14324
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