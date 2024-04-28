extends "res://nodes/Characters/ComputerControlledPlayer.gd"

func _init():
	SPEED=75
	
func _ready():
	super._ready()

func teleport():
	#print("Andre Teleport")
	super.teleport()
	
#func _physics_process(delta):
	#super._physics_process(delta)
	#
