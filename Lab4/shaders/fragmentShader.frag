varying vec2 vUv;
uniform sampler2D texture1;

void main() {
  //gl_FragColor = vec4(0.0, 0.0, 1.0, 1.0); //rgba, return blue
  // gl_FragColor = vec4(mix(colorA, colorB, vUv.z), 1.0);
  // gl_FragColor =  vec4(vUv.x, vUv.y, 0.0, 1.0); //rgba

  // sample from the texture based on the uv coordinates
  gl_FragColor = texture2D(texture1, vUv);

}
