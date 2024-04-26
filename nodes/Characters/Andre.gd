extends "res://nodes/Characters/ComputerControlledPlayer.gd"

func _init():
	SPEED=75
	
func _ready():
	pass # Replace with function body.

func teleport():
	#print("Andre Teleport")
	super.teleport()
