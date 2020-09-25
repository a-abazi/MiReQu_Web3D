#version 450
#include "compiled.inc"
in vec3 wnormal;
out vec4 fragColor;
void main() {
vec3 n = normalize(wnormal);
	vec3 basecol;
	float roughness;
	float metallic;
	float occlusion;
	float specular;
	basecol = vec3(1.0, 0.2230374664068222, 0.0099501833319664);
	roughness = 0.20872801542282104;
	metallic = 1.0;
	occlusion = 1.0;
	specular = 1.0;
	fragColor = vec4(basecol, 1.0);
	fragColor.rgb = pow(fragColor.rgb, vec3(1.0 / 2.2));
}
