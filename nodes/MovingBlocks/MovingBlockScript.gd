extends PathFollow2D

@onready var can_move = false
var direction = "forward"
var speed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if can_move && direction=="forward":
		progress_ratio+=delta*speed
		
	elif can_move && direction=="reverse":
		progress_ratio-=delta*speed
		
	if (progress_ratio>=0.98):
		can_move = false
		progress_ratio = 1
		direction = "reverse"
		
	elif (progress_ratio<=0.02):
		can_move = false
		progress_ratio = 0
		direction="forward"

	

