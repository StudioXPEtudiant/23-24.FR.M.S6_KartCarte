extends Node2D

var progress := 0

@onready var progress_bar := $TextureProgressBar

func _ready():
	progress_bar.value = progress

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		progress += 10
		progress = clamp(progress, 0, 100)
		progress_bar.value = progress
