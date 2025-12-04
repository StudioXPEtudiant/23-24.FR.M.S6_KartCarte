extends Node2D
var ListeCarte:Array

var xOrigine:float = 125
var yOrigine:float = 10
var TailCarte:Vector2 = Vector2(576/2,648/2)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Début ListeCarte ")
	ListeCarte = $"../../../../ListeCarte".get_children()
	ListeCarte.size()
	for i in range(0,ListeCarte.size()):
		
		var btn:Button = Button.new()
		btn.text = "Text buton"
		#btn.button_down.connect()
		
		var carte:Node2D = ListeCarte[i].duplicate()
		carte.visible = true
		
		var container:BoxContainer = BoxContainer.new()
	
		container.add_child(carte)
		carte.position = Vector2(0,0)
		container.add_child(btn)
		btn.position = Vector2(0,0)
		add_child(container)
		
		
		carte.scale = Vector2(0.5,0.5)
		btn.size = Vector2(TailCarte.x,TailCarte.y)
		btn.scale = Vector2(0.5,0.5)
		container.position = Vector2(xOrigine+(TailCarte.x+10)*(i%3),yOrigine+(TailCarte.y+10)*(i/3))
		print(carte)
		print(carte.nom)
		print(container.position)
		print("--------------")
	print("Fin ListeCarte ")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func sourie():
	print("c'est bon")
