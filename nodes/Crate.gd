extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_crate_area_2d_mouse_entered():
	#print ("_on_crate_area_2d_mouse_entered")
	pass



func _on_crate_area_2d_input_event(viewport, event, shape_idx):
	#print ("_on_crate_area_2d_input_event", viewport, event, shape_idx)
	pass


func _on_crate_area_2d_area_entered(area):
	print(area.name)
