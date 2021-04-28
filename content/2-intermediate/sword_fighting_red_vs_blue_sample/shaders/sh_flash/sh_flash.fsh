//
// Simple passthrough fragment shader, credits to Matharoo
//RETRIEVED FROM : https://www.udemy.com/course/crafting/?referralCode=81153850CB978F6D9ECC
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.rgb = v_vColour.rgb;
}
