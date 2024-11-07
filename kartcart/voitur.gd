extends Node2D

@export var parentListPoint: Node2D
var curentindex : int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = parentListPoint.get_children()[curentindex].global_position
	global_rotation = parentListPoint.get_children()[curentindex].global_rotation


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func mouve():
	curentindex+= 1
	if curentindex >= parentListPoint.get_children().size():
		curentindex = 0
	global_position = parentListPoint.get_children()[curentindex].global_position
	global_rotation = parentListPoint.get_children()[curentindex].global_rotation
