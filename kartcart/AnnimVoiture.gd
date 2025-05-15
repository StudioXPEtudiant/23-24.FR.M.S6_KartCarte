extends Node2D
var positionAnnime:float
@export var listeDePoint:Array[Node2D]
var tronsson:int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	positionAnnime = 0
	tronsson = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	positionAnnime += delta *0.50
	#  % de la distance entre les deux point
	if positionAnnime > 1:
		positionAnnime = 0
		tronsson += 1
		if tronsson >= listeDePoint.size()-1:
			tronsson = 0
	global_position = lerp(listeDePoint[tronsson].global_position,listeDePoint[tronsson+1].global_position,positionAnnime)
	global_rotation = lerp(listeDePoint[tronsson].global_rotation,listeDePoint[tronsson+1].global_rotation,positionAnnime)
# elle tourne dans le movais sens
