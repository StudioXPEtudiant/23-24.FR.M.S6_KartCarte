extends Node
var SonsVolume = 0

@onready var sons_volume_player: AudioStreamPlayer = $"../../SonsVolumePlayer"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_value_changed(value: float) -> void:
	SonsVolume = value
	SonsVolume = (SonsVolume-50)/4
	sons_volume_player.volume_db = SonsVolume
	print(SonsVolume)
	sons_volume_player.play()
	


func _on_drag_ended(value_changed: bool) -> void:
	pass # Replace with function body.
