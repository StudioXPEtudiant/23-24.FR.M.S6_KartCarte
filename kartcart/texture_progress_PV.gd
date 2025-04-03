extends TextureProgressBar

func add_progress(amount):
	value += amount
	value = min(value, max_value)  # Limite à la valeur max 
