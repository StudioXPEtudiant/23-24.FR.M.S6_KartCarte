extends Sprite2D

@onready var label = $Label
@onready var my_panel = $"../MyPanel"  
var count: int = 30

func _ready():
	update_label()
	if my_panel:
		my_panel.visible = false  

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if get_rect().has_point(to_local(event.position)):
			if count > 0:
				count -= 1
				update_label()
				
				#get_children(Label/CarteVisible)
				if my_panel:
					my_panel.visible = true

func update_label():
	if label:
		label.text = str(count)
