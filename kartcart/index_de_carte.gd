extends Node2D
var ListeCarte:Array

var xOrigine:float = 125
var yOrigine:float = 10
var TailCarte:Vector2 = Vector2(576/2,648/2)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ListeCarte = $"../../../../ListeCarte".get_children()
	ListeCarte.size()
	for i in range(0,ListeCarte.size()):
		var carte:Node2D = ListeCarte[i].duplicate()
		carte.visible = true
		add_child(carte)
		carte.scale = Vector2(0.5,0.5)
		carte.position = Vector2(xOrigine+(TailCarte.x+10)*(i%3),yOrigine+(TailCarte.y+10)*(i/3))
		print(carte)
		print(carte.position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
