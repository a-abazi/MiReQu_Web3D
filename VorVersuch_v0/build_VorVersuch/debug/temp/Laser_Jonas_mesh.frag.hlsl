uniform float3 param_RGB;

static bool gl_FrontFacing;
static float3 wnormal;
static float4 fragColor[2];

struct SPIRV_Cross_Input
{
    float3 wnormal : TEXCOORD0;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 fragColor[2] : SV_Target0;
};

float2 octahedronWrap(float2 v)
{
    return (1.0f.xx - abs(v.yx)) * float2((v.x >= 0.0f) ? 1.0f : (-1.0f), (v.y >= 0.0f) ? 1.0f : (-1.0f));
}

float packFloatInt16(float f, uint i)
{
    return (0.06248569488525390625f * f) + (0.06250095367431640625f * float(i));
}

float packFloat2(float f1, float f2)
{
    return floor(f1 * 255.0f) + min(f2, 0.9900000095367431640625f);
}

void frag_main()
{
    float3 n = normalize(wnormal);
    float3 RGB_Color_res = param_RGB;
    float3 basecol = RGB_Color_res * 1000.0f;
    float roughness = 0.0f;
    float metallic = 0.0f;
    float occlusion = 1.0f;
    float specular = 1.0f;
    float emission = 1.0f;
    if (!gl_FrontFacing)
    {
        n *= (-1.0f);
    }
    n /= ((abs(n.x) + abs(n.y)) + abs(n.z)).xxx;
    float2 _107;
    if (n.z >= 0.0f)
    {
        _107 = n.xy;
    }
    else
    {
        _107 = octahedronWrap(n.xy);
    }
    n = float3(_107.x, _107.y, n.z);
    uint matid = 0u;
    if (emission > 0.0f)
    {
        basecol *= emission;
        matid = 1u;
    }
    fragColor[0] = float4(n.xy, roughness, packFloatInt16(metallic, matid));
    fragColor[1] = float4(basecol, packFloat2(occlusion, specular));
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FrontFacing = stage_input.gl_FrontFacing;
    wnormal = stage_input.wnormal;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.fragColor = fragColor;
    return stage_output;
}
