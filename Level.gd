extends Node2D

var c = preload("res://nodes/Crate.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var crate = c.instance()
	call_deferred("add_child", crate)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

