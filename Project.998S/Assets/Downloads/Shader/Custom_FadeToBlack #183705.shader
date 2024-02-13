//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/FadeToBlack" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_GreyScaleTexture ("Base (RGB)", 2D) = "white" { }
}
SubShader {
 Pass {
  GpuProgramID 23305
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