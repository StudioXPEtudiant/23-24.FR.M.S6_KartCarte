extends Control
@onready var progress_bar = $Control/jeux
func _input(event)if event.is_action_pressed("ui_accept"):  # "Entrée" p
func _ready():
	progress_bar = get_node("HealthBar")
	print(progress_bar)

		if progress_bar:
	(progress_bar as Bar).add_progress(10)  # Force le cast vers le ty
