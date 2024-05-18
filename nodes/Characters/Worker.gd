extends "res://nodes/Characters/ComputerControlledPlayer.gd"

func _init():
	SPEED=50

func _ready():
	super._ready()

func _on_comp_controlled_player_area_2d_input_event(viewport, event, shape_idx):
	super._on_comp_controlled_player_area_2d_input_event(viewport, event, shape_idx)



func _on_area_2d_area_entered(area):
	if (area.get_parent().name=="Crate"):
		velocity.x=0;
		customAnimation="work"
