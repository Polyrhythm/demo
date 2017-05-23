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

float sdfSphere(vec3 pos, float r)
{
    return length(p) - r;
}

float map(vec3 pos)
{
    return sdfSphere(pos, 0.25);
}

float trace(vec3 ro, vec3 rd, out vec3 pos, out int steps)
{
    float t = 0.0;
    const int MAX_STEPS = 128;
    const float MAX_DIST = 10.0;
    const float EPS = 0.002;
    
    for (steps = 0; steps < MAX_STEPS; steps++) {
        if (t >= MAX_DIST) {
            return -1.0;
        }

        pos = ro + rd * t;
        float h = map(pos);

        if (h < EPS) {
            return 1.0;
        }

        t += h;
    }

    return -1.0;
}

vec3 render(vec3 ro, vec3 rd)
{
    vec3 pos;
    int steps;
    float t = trace(ro, rd, pos, steps);

    if (t == -1.0)
    {
        return vec3(0.0);
    }

    return vec3(1.0);
}

void main()
{
    float time = fpar[0].x;
    vec2 resolution = fpar[1].xy;

    vec2 uv = gl_FragCoord.xy / resolution.xy;

    vec3 ro = vec3(0.0, 0.0, 3.0);
    vec3 lookAt = vec3(0.0, 0.0, 0.0);
    vec3 ww = normalize(lookAt - ro);
    vec3 uu = normalize(cross(ww, vec3(0.0, 1.0, 0.0)));
    vec3 vv = normalize(cross(uu, ww));
    vec3 rd = normalize(uu * uv.x + vv * uv.y + ww * 3.0);
    
    vec3 colour = render(ro, rd);

    fragColour = vec4(colour, 1.0); 
}
)";
