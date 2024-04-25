extends Area2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("A click!")
			if (frame==0):
				frame = 2
				$CloseDoor.play()
				self.get_parent().get_node("CollisionShape2D").disabled = true
			elif (frame==2):
				frame=0
				$OpenDoor.play()
				self.get_parent().get_node("CollisionShape2D").disabled = false
				
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
