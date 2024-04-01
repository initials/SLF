extends Sprite2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("A click!")
			

#func _input(event):
	#if event is InputEventMouseButton and event.pressed:
		##if get_rect().has_point(to_local(event.position)):
		#print (get_rect())
		#print (get_rect().has_point(to_local(event.position)))
		#print (to_local(event.position))
		#

