xtends Sprite2D

@onready var label = $Label
var count: int = 30

func _ready():
	pass
	
	


func update_label():
	if label:
		label.text = str(count)

func pioche():
	if count > 0:
		count -= 1
		update_label()
