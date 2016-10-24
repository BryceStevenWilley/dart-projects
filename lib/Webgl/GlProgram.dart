// Copyright (c) 2013, John Thomas McDole.

import 'dart:web_gl';

/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

class GlProgram {
  Map<String, int> attributes = new Map<String, int>();
  Map<String, UniformLocation> uniforms = new Map<String, UniformLocation>();
  Program program;

  Shader fragmentShader, vertexShader;

  GlProgram(RenderingContext gl, String fragSrc, String vertSrc,
      List<String> attributeNames, List<String> uniformNames) {
    // Create and compile the fragment shader.
    fragmentShader = gl.createShader(FRAGMENT_SHADER);
    gl.shaderSource(fragmentShader, fragSrc);
    gl.compileShader(fragmentShader);

    // Create and compile the vertex shader.
    vertexShader = gl.createShader(VERTEX_SHADER);
    gl.shaderSource(vertexShader, vertSrc);
    gl.compileShader(vertexShader);

    program = gl.createProgram();
    gl.attachShader(program, vertexShader);
    gl.attachShader(program, fragmentShader);
    gl.linkProgram(program);

    if (!gl.getProgramParameter(program, LINK_STATUS)) {
      print("Could not initialise shaders");
      print(gl.getShaderInfoLog(vertexShader));
      print(gl.getShaderInfoLog(fragmentShader));
    }

    for (String attrib in attributeNames) {
      int attributeLocation = gl.getAttribLocation(program, attrib);
      gl.enableVertexAttribArray(attributeLocation);
      attributes[attrib] = attributeLocation;
    }

    for (String uniform in uniformNames) {
      var uniformLocation = gl.getUniformLocation(program, uniform);
      uniforms[uniform] = uniformLocation;
    }
  }
}
