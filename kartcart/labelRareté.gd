@tool
extends Label


@export var carte:carte

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str(carte.Niveau)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if text != str(carte.Niveau):
		text = str(carte.Niveau)
		
