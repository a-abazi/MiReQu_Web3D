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
	float opacity;
	basecol = vec3(0.8);
	roughness = 0.28947365283966064;
	metallic = 0.0;
	occlusion = 1.0;
	specular = 1.0;
	opacity = (1.0 - vec3(0.33442023396492004, 0.2874012887477875, 0.328825443983078).r) - 0.0002;
	if (opacity < 0.9999) discard;
	n /= (abs(n.x) + abs(n.y) + abs(n.z));
	n.xy = n.z >= 0.0 ? n.xy : octahedronWrap(n.xy);
	const uint matid = 0;
	fragColor[0] = vec4(n.xy, roughness, packFloatInt16(metallic, matid));
	fragColor[1] = vec4(basecol, packFloat2(occlusion, specular));
}