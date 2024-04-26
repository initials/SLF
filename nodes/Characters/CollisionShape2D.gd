extends CollisionShape2D



				
# Called when the node enters the scene tree for the first time.
func _ready():
	self.input_pickable = true
	self.input_event.connect(_on_character_input_event)


func _on_character_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print(event)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
