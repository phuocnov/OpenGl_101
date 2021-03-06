#version 330 core
in vec3 ourColor;
out vec4 color;
in vec2 TexCoord;
uniform sampler2D ourTexture1;
uniform sampler2D ourTexture2;
void main()
{
	color = mix(texture(ourTexture1, TexCoord), texture(ourTexture2, TexCoord), 0.2f);
}