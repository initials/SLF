extends Node2D

var frameCounter = 0;
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	$Magic.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	frameCounter+=1
	if (frameCounter%20==0):
		modulate.r -= 0.001
	if (modulate.r < 0):
		modulate.r = 1


func teleport():
	pass

#func _on_area_2d_area_entered(area):
	#print("!!!", self.get_child(0).name, " ", area.name)
	#if area.name != "SugarBagArea2D":
		#$Magic.play("reverse")	
		#$Collected.play()
		#self.get_child(0).visible = 0


func _on_collected_finished():
	print("collected finished")
	queue_free()


func _on_sugar_bag_area_2d_area_entered(area):
	
	#print("***", self.get_child(0).name, " ", area.name)
	if area.name != "SugarBagArea2D":
		Global.score += 1
		$Magic.play("reverse")	
		$Collected.play()
		get_node("SugarSprite2D").visible = 0
