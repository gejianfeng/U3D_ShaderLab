﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "ShaderLab/Chapter03/Simple VertexFragment Shader"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            float4 vert(float4 v: POSITION): SV_POSITION
            {
                return UnityObjectToClipPos(v);
            }

            fixed4 frag(): SV_TARGET
            {
                return fixed4(1.0, 0.0, 0.0, 1.0);
            }

            ENDCG
        }
    }
}