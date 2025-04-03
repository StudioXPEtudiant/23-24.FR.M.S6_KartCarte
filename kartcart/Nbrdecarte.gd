extends Sprite2D

@onready var label = $Label  
var count: int = 30

func _ready():
	update_label()

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if get_rect().has_point(to_local(event.position)):  
			if count > 0:
				count -= 1
				update_label()

func update_label():
	if label:  
		label.text = str(count)  
