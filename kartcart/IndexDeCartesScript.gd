extends Node2D  # Nous étendons Node2D car c'est la classe de base pour notre scène

# Référence au TextEdit4 dans l'éditeur
onready var text_edit = $CanvasLayer/Control/TextEdit4

func _ready():
	# Connecter le signal 'input_event' de TextEdit4 pour détecter les clics
	text_edit.connect("input_event", self, "_on_TextEdit_input_event")

# Fonction appelée lorsqu'un événement d'entrée est détecté (ex : clic de souris)
func _on_TextEdit_input_event(viewport, event, shape_idx):
	# Vérifier si l'événement est un clic de souris gauche
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		# Changer la scène lorsque le clic gauche est détecté
		var scene = load("res://IndexDeCartes.tscn")
		get_tree().change_scene_to(scene)
