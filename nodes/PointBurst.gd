extends Node2D

@onready var velocity = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = 1.0 + (randf()) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= velocity;
