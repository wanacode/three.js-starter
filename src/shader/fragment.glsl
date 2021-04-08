uniform float time;
uniform float progress;
uniform sampler2D t;
uniform sampler2D displace;
uniform vec4 resolution;
varying vec2 vUv;

void main()	{

  vec2 displacedUV = vec2(vUv.x + 0.1 * sin(vUv.y * 19.), vUv.y);
  vec4 color = texture2D(t, displacedUV);

  // vec4 color = texture2D(t, vUv);

  gl_FragColor = color;
}