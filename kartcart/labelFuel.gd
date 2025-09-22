@tool
extends Label


@export var carte:carte

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str(carte.NombreDeFuel)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if text != str(carte.NombreDeFuel):
		text = str(carte.NombreDeFuel)
		
