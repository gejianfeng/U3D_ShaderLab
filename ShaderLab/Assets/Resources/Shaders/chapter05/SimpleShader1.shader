﻿Shader "ShaderLab/Chapter05/Simple Shader 1"
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
                return fixed4(1.0, 1.0, 1.0, 1.0);
            }

            ENDCG
        }
    }
}