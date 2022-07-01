#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

uniform float offset;

out vec3 ourColor;
out vec3 ourPosition;

void main()
{
    gl_Position = vec4(position.x + offset, position.y, position.z, 1.0f);
    ourColor = color;
    ourPosition = position;
}

// awser for the question
// because bottom left position is -0.5f, -0.5f, color will normalize to 0.0f