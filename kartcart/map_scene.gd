extends Node

@export var listMapNode:Array[Node]

@export var mapCurNode:Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in listMapNode:
		remove_child(node)


func openScene(numNode:int):
	mapCurNode=listMapNode[numNode]
	add_child(mapCurNode)

func quitScene(numNode:int):
	mapCurNode=listMapNode[numNode]
	remove_child(mapCurNode)
