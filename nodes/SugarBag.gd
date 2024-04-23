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


func teleport():
	pass

func _on_area_2d_area_entered(area):
	$Collected.play()
	self.get_child(0).visible = 0


func _on_collected_finished():
	
	queue_free()
