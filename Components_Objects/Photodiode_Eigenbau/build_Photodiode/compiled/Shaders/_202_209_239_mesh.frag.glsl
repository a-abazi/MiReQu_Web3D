#version 450
#include "compiled.inc"
#include "std/gbuffer.glsl"
in vec3 wnormal;
out vec4 fragColor[2];
void main() {
vec3 n = normalize(wnormal);
	vec3 basecol;
	float roughness;
	float metallic;
	float occlusion;
	float specular;
	basecol = vec3(0.020709365606307983, 0.02127058245241642, 0.023648587986826897);
	roughness = 0.4107443392276764;
	metallic = 0.0;
	occlusion = 1.0;
	specular = 0.6797386407852173;
	n /= (abs(n.x) + abs(n.y) + abs(n.z));
	n.xy = n.z >= 0.0 ? n.xy : octahedronWrap(n.xy);
	const uint matid = 0;
	fragColor[0] = vec4(n.xy, roughness, packFloatInt16(metallic, matid));
	fragColor[1] = vec4(basecol, packFloat2(occlusion, specular));
}