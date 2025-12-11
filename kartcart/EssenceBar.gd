extends TextureProgressBar

@export var textures: Array[Texture2D] = []  

func _ready() -> void:
	value_changed.connect(_on_value_changed)
	_update_texture()

func _on_value_changed(v: float) -> void:
	_update_texture()

func _update_texture() -> void:
	if textures.is_empty():
		return

	var steps := textures.size()
	var ratio := (value - min_value) / float(max_value - min_value)
	ratio = clamp(ratio, 0.0, 1.0)

	var index := int(round(ratio * (steps - 1)))
	
	texture_under = textures[index]
