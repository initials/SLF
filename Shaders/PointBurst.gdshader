shader_type canvas_item;


uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_nearest;
uniform sampler2D filter_off : filter_nearest;



void fragment() {
	
	vec2 offset_uv = UV;
	vec4 tx = COLOR;
	float size = 15.0;
	
	float yColor = offset_uv.y * size;
	vec3 grad = vec3(0.31, 0.31, 0.5);
	
	
	if (UV.y < 0.033)
	{
		COLOR = vec4(grad, COLOR.a);	
	}
	else if (UV.y > 0.043)
	{
		COLOR = vec4(grad.x, grad.y, grad.z, COLOR.a);	
	}
	else {
		float div = 0.82;
		COLOR = vec4(grad.x/div, grad.y/div, grad.z/div, COLOR.a);
	}
	//COLOR = vec4(0, yColor, 0, COLOR.a);
	
}

