extends CharacterBody2D
@onready var axis = Vector2.ZERO

const SPEED = 100.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


 #Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (velocity.y < 0):
		$AndreAnimations.play("jump")
	elif (abs(velocity.x) > 0):
		$AndreAnimations.play("run")
	else:
		$AndreAnimations.play("idle")
		
	if (velocity.x>0):
		$AndreAnimations.flip_h = 0
	if (velocity.x<0):
		$AndreAnimations.flip_h = 1
	#axis.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	#move_and_slide()
	





