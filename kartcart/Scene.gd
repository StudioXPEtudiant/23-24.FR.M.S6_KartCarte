extends Node

@export var listNode:Array[Node]

@export var CurNode:Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in listNode:
		remove_child(node)
	add_child(CurNode)


func switchNode(numNode:int):
	remove_child(CurNode)
	CurNode=listNode[numNode]
	add_child(CurNode)
