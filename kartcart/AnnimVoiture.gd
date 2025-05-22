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
	positionAnnime += delta /listeDePoint[tronsson].global_position.distance_to(listeDePoint[tronsson+1].global_position) *150
	#  % de la distance entre les deux point
	if positionAnnime > 1:
		positionAnnime = 0
		tronsson += 1
		if tronsson >= listeDePoint.size()-1:
			tronsson = 0
	global_position = lerp(listeDePoint[tronsson].global_position,listeDePoint[tronsson+1].global_position,positionAnnime)
	if abs(listeDePoint[tronsson].global_rotation + (listeDePoint[tronsson+1].global_rotation)) <= 180:
		
		global_rotation = lerp(listeDePoint[tronsson].global_rotation,listeDePoint[tronsson+1].global_rotation,positionAnnime)
	else:
		global_rotation = lerp(listeDePoint[tronsson+1].global_rotation,listeDePoint[tronsson].global_rotation,positionAnnime)
