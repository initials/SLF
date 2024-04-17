extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print ("ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_mouse_entered():
	print ("_on_mouse_entered")
	
	


func _on_area_entered(area):
	print (area.get_name())

