Shader "ShaderLab/Chapter03/Simple Surface Shader"
{
    SubShader
    {
        Tags
        {
            "RenderType" = "Qpaque"
        }

        CGPROGRAM

        #pragma surface surf Lambert
        struct Input
        {
            float color: COLOR;
        };

        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = 1;
        }

        ENDCG
    }

    Fallback "Diffuse"
}