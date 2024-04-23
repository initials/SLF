extends Node2D

var c = preload("res://nodes/Crate.tscn")
var sugar = preload("res://nodes/SugarBag.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	var crate = c.instantiate()
	crate.position.x = 100
	crate.position.y = 100
	
	call_deferred("add_child", crate)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (randf()<0.02):
		create_sugar_bag()

func create_sugar_bag():
	var crate = sugar.instantiate()
	crate.position.x = randf() * 1000
	crate.position.y = randf() * 1000
	
	call_deferred("add_child", crate)
