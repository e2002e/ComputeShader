#version 450

in vec2 texcoord;

uniform sampler3D texsampler;

out vec4 fragColor;

void main() {
	vec4 color = texture(texsampler, vec3(texcoord, 0.0));
	fragColor = vec4(color.r, color.g, color.b, 1.0);
}
