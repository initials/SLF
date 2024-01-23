extends Node2D

var frameCounter = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	frameCounter+=1
	if (frameCounter%20==0):
		modulate.r -= 0.1
	if (modulate.r < 0):
		modulate.r = 1
