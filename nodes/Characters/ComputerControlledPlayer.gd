extends CharacterBody2D
@onready var axis = Vector2.ZERO

var SPEED = 50.0
var JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = 1

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
		


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("move_left", "move_right")

	var sizeX = get_viewport().size.x 
	#print (get_viewport().size, get_viewport().sdf_oversize)

	if (position.x < 0):
		direction *= -1
		position.x = 1
		#$SndTalk.play()
		
	if (position.x > sizeX-10):
		direction *= -1
		position.x = sizeX - 15
		#$SndTalk.play()
		
	velocity.x = direction * SPEED
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var push_force = 5
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
func _ready():
	pass # Replace with function body.


 #Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (velocity.y < 0):
		$CharacterAnimations.play("jump")
	elif (abs(velocity.x) > 0):
		$CharacterAnimations.play("run")
	else:
		$CharacterAnimations.play("idle")
		
	if (velocity.x>0):
		$CharacterAnimations.flip_h = 0
	if (velocity.x<0):
		$CharacterAnimations.flip_h = 1
		
	if (position.y > 1080):
		position.y=0
	#axis.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	#move_and_slide()
	
func teleport():
	print ("Teleport", self.name)




