extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func switchScene(Scene:String):
	get_tree().change_scene_to_file(Scene)
	
func quit():
	get_tree().quit()


func _on_button_down() -> void:
	pass # Replace with function body.


func _on_pressed() -> void:
	pass # Replace with function body.
