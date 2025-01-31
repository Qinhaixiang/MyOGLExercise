#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
uniform float offset;
  
out vec3 ourColor; // output a color to the fragment shader
out vec3 posVS;

void main()
{
    //gl_Position = vec4(aPos, 1.0) * vec4(1.0, -1.0, 1.0, 1.0);
    gl_Position = vec4(aPos, 1.0);// + vec4(offset, 0.0, 0.0, 0.0);
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
    posVS = aPos;
} 