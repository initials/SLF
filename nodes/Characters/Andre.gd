extends "res://nodes/Characters/ComputerControlledPlayer.gd"

func _init():
	SPEED=75
	
func _ready():
	super._ready()

func teleport():
	#print("Andre Teleport")
	super.teleport()
	
func _on_comp_controlled_player_area_2d_input_event(viewport, event, shape_idx):
	super._on_comp_controlled_player_area_2d_input_event(viewport, event, shape_idx)


