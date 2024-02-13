//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Standard" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Albedo", 2D) = "white" { }
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_Glossiness ("Smoothness", Range(0, 1)) = 0.5
_GlossMapScale ("Smoothness Scale", Range(0, 1)) = 1
[Enum(Metallic Alpha,0,Albedo Alpha,1)] _SmoothnessTextureChannel ("Smoothness texture channel", Float) = 0
_Metallic ("Metallic", Range(0, 1)) = 0
_MetallicGlossMap ("Metallic", 2D) = "white" { }
[ToggleOff] _SpecularHighlights ("Specular Highlights", Float) = 1
[ToggleOff] _GlossyReflections ("Glossy Reflections", Float) = 1
_BumpScale ("Scale", Float) = 1
_BumpMap ("Normal Map", 2D) = "bump" { }
_Parallax ("Height Scale", Range(0.005, 0.08)) = 0.02
_ParallaxMap ("Height Map", 2D) = "black" { }
_OcclusionStrength ("Strength", Range(0, 1)) = 1
_OcclusionMap ("Occlusion", 2D) = "white" { }
_EmissionColor ("Color", Color) = (0,0,0,1)
_EmissionMap ("Emission", 2D) = "white" { }
_DetailMask ("Detail Mask", 2D) = "white" { }
_DetailAlbedoMap ("Detail Albedo x2", 2D) = "grey" { }
_DetailNormalMapScale ("Scale", Float) = 1
_DetailNormalMap ("Normal Map", 2D) = "bump" { }
[Enum(UV0,0,UV1,1)] _UVSec ("UV Set for secondary textures", Float) = 0
_Mode ("__mode", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
}
SubShader {
 LOD 300
 Tags { "PerformanceChecks" = "False" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 300
  Tags { "LIGHTMODE" = "FORWARDBASE" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  GpuProgramID 60147
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  LOD 300
  Tags { "LIGHTMODE" = "FORWARDADD" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero One, Zero One
  ZWrite Off
  GpuProgramID 81374
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SHADOWCASTER"
  LOD 300
  Tags { "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  GpuProgramID 195972
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DEFERRED"
  LOD 300
  Tags { "LIGHTMODE" = "DEFERRED" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  GpuProgramID 201409
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
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
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "META"
  LOD 300
  Tags { "LIGHTMODE" = "META" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 287608
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
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
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 LOD 150
 Tags { "PerformanceChecks" = "False" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 150
  Tags { "LIGHTMODE" = "FORWARDBASE" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  GpuProgramID 378374
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" "_GLOSSYREFLECTIONS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  LOD 150
  Tags { "LIGHTMODE" = "FORWARDADD" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero One, Zero One
  ZWrite Off
  GpuProgramID 453023
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHABLEND_ON" "_NORMALMAP" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_ALPHAPREMULTIPLY_ON" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_NORMALMAP" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "_SPECULARHIGHLIGHTS_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SHADOWCASTER"
  LOD 150
  Tags { "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  GpuProgramID 518401
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "META"
  LOD 150
  Tags { "LIGHTMODE" = "META" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 569850
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
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
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_METALLICGLOSSMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_DETAIL_MULX2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "VertexLit"
CustomEditor "StandardShaderGUI"
}