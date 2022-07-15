uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;
varying float vElevation;
// varying float vRamdom;

void main() {
  vec4 textureColor = texture2D(uTexture, vUv);
  textureColor.rgb *= vElevation * 2.0 + 0.8;
  gl_FragColor = vec4(textureColor);
  // gl_FragColor = vec4(0.5, vRamdom, 1.0, 1.0);
}