extends Camera2D
var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if (Input.is_key_pressed(KEY_O)):
		zoom.x += 1
		zoom.y += 1
	if (Input.is_key_pressed(KEY_P)):
		zoom.x -= 1
		zoom.y -= 1
	if (Input.is_key_pressed(KEY_A)):
		position.x -= speed
	if (Input.is_key_pressed(KEY_D)):
		position.x += speed
	if (Input.is_key_pressed(KEY_S)):
		position.y -= speed
	if (Input.is_key_pressed(KEY_W)):
		position.y += speed
