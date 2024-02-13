//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/FogVolume" {
Properties {
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZTest Always
  ZWrite Off
  Cull Front
  Fog {
   Mode Off
  }
  GpuProgramID 61562
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
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
SubProgram "d3d9 " {
Keywords { "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FOG_VOLUME_INSCATTERING" "_FOG_VOLUME_NOISE" "_FOG_GRADIENT" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}