shader_type canvas_item;


uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_nearest;

uniform float time_factor = 1.0;
uniform vec2 amplitude = vec2(0.5,0.5);

void fragment() {
	
	vec2 offset_uv = SCREEN_UV;
	vec4 tx = COLOR;
	
	
	COLOR = vec4(0, offset_uv.y, 0, COLOR.a);
	
}

