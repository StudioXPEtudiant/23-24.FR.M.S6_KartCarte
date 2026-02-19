extends Node
var ListeCarte:Array
var currentCarte
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func afficherCarte(curCarte:int):
	curCarte = 1 #a enlever quand le jeux choisi une carte dans le deck
	ListeCarte = $"../../../../ListeCarte".get_children()
	var carte:Node2D = ListeCarte[curCarte].duplicate()
	carte.visible = true
