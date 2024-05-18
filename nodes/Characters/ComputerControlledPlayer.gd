extends CharacterBody2D
@onready var axis = Vector2.ZERO

var SPEED = 0.0
var JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = 1

var customAnimation = ""

func _ready():
	velocity.x = direction * SPEED

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

	var sizeX = get_viewport().size.x / Global.scale
	

	if (position.x < 0):
		direction *= -1
		position.x = 1
		#$SndTalk.play()
		velocity.x = direction * SPEED
		
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
			print (c.get_collider().name)
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)
			



 #Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (customAnimation!=""):
		$CharacterAnimations.play(customAnimation)
	elif (velocity.y < 0):
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
	pass
	#print ("Teleport", self.name)


func _on_comp_controlled_player_area_2d_input_event(viewport, event, shape_idx):
	#print(viewport, event, shape_idx)
	
	### Click
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		#print ("xxx _on_comp_controlled_player_area_2d_input_event", viewport, event, shape_idx)
		if (velocity.x == 0):
			velocity.x = direction * SPEED
			
			$SndGo.play()
		else:
			velocity.x = 0
			
			$SndStop.play()


func _on_input_event(viewport, event, shape_idx):
	print ("_on_input_event", viewport, event, shape_idx)


func _on_player_area_2d_mouse_entered():
	modulate = Color(1.2,1.2,1.2)


func _on_player_area_2d_mouse_exited():
	modulate = Color(1,1,1)
