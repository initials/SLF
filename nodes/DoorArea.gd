extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print ("ready")
	print ( self.get_parent())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _physics_process(delta):
#
	#for body in get_overlapping_bodies():
			##print(body.name, is_in_group("Characters") )
			#if (body.name!="TileMap"):
				#print(body)
			#if body.is_in_group("Characters"):
				#print("collisions!")
				#var pos = self.get_parent().get_node("DoorTop").position
				#print(pos)
				#body.get_parent().position = pos

func _on_mouse_entered():
	print ("_on_mouse_entered")
	
	


func _on_area_entered(area):

	if _door_is_open() && self.name != "DoorTop":
		var pos = self.get_parent().get_node("DoorTop").position
		pos.y = pos.y-10
		area.get_parent().position = pos
		
func findByClass(node: Node, className : String, result : Array) -> void:
	if node.is_class(className) :
		result.push_back(node)
	for child in node.get_children():
		findByClass(child, className, result)

func _door_is_open():
	if (get_child(1).frame==0):
		return true
	if (get_child(1).frame==2):
		return false
