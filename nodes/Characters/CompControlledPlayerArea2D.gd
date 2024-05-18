extends Area2D

func _ready():
	print ("Go")
	self.input_pickable = true
	self.input_event.connect(_on_character_input_event)


func _on_character_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("CompControlledPlayerArea2d", event)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
