# Fait de la barre une classe personnalisée reconnue par Godot
class_name Bar
extends TextureProgressBar

func add_progress(amount):
	value += amount
	value = min(value, max_value)  # Empêche de dépasser 100%
