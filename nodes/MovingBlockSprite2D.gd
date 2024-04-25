extends Sprite2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("A moving platform click!")
			self.get_parent().get_parent().can_move = true
			#if self.get_parent().get_parent().direction == "forward":
				#self.get_parent().get_parent().direction = "reverse"
			#elif self.get_parent().get_parent().direction == "reverse":
				#self.get_parent().get_parent().direction = "forward"
				
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
