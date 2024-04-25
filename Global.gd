extends Node

var score = 0

var screenSize 
var scale 

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Window ", get_viewport().size, " Scale ", get_tree().root.content_scale_factor)
	screenSize = get_viewport().size
	scale = get_tree().root.content_scale_factor
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
