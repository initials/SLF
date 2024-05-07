extends Node2D

var c = preload("res://nodes/Crate.tscn")
var sugar = preload("res://nodes/SugarBag.tscn")
var magic = preload("res://nodes/Magic.tscn")
var pb = preload("res://nodes/PointBurst.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func create_point_burst(x,y):
	var p = pb.instantiate()
	p.position.x = x
	p.position.y = y
	
	call_deferred("add_child", p)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (randf()<0.02):
		create_sugar_bag()
		

func create_sugar_bag():
	var crate = sugar.instantiate()
	crate.position.x = 300 + (randf()*10)
	crate.position.y = 0
	
	call_deferred("add_child", crate)
	
	var m = magic.instantiate()
	m.position.x = crate.position.x
	m.position.y = crate.position.y
	
	call_deferred("add_child", m)

func create_crate():
	var crate = c.instantiate()
	crate.position.x = 100
	crate.position.y = 100
	
	call_deferred("add_child", crate)
	
