shader_type canvas_item;


uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_nearest;
uniform sampler2D filter_off : filter_nearest;

uniform float time_factor = 1.0;
uniform vec2 amplitude = vec2(0.5,0.5);


//void vertex() {
	//// Called for every vertex the material is visible on.
//}

void fragment() {
	
	vec2 offset_uv = SCREEN_UV;
	offset_uv.x += -0.5 + (cos((TIME + offset_uv.y) * time_factor) * amplitude.x);
	offset_uv.y = 0.0;
	
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV+offset_uv); // Read from texture
	
	//COLOR = vec4(offset_uv, 0, 1);
	
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
