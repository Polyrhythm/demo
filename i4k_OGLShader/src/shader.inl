//--------------------------------------------------------------------------//
// iq / rgba  .  tiny codes  .  2008
// polyrhythm .  shader code .  2017
//--------------------------------------------------------------------------//

static const char* vsh = R"(
#version 430

layout(location = 0) in vec2 inVer;
out gl_PerVertex{ vec4 gl_Position; };

void main()
{
    gl_Position = vec4(inVer, 0.0, 1.0);
}
)";

static const char* fsh = R"(
#version 430

layout (location = 0) uniform vec4 fpar[2];
layout (location = 0) out vec4 fragColour;

void main()
{
    float time = fpar[0].x;
    vec2 resolution = fpar[1].xy;

    vec2 uv = gl_FragCoord.xy / resolution.xy;
    
    fragColour = vec4(uv.xy, 0.5, 1.0); 
}
)";
