extends Node2D
var ListeCarte:Array

var xOrigine:float = 125
var yOrigine:float = 10
var TailCarte:Vector2 = Vector2(576/2,648/2)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Début ListeCarte ")
	ListeCarte = $"../../../../ListeCarte".get_children()
	print("Liste carte size:",ListeCarte.size())
	print("--------------")
	for i in range(0,ListeCarte.size()):
		
		var btn:Button = Button.new()
		
		
		
		var carte:Node2D = ListeCarte[i].duplicate()
		carte.visible = true
		
		var container:BoxContainer = BoxContainer.new()
		
		
		container.add_child(carte)
		
		
		container.add_child(btn)
		
		
		add_child(container)
		
		
		carte.position = Vector2(0,0)
		carte.scale = Vector2(0.5,0.5)
		
		#btn.clip_text = true
		#btn.text = carte.nom
		btn.position = Vector2(0,0)
		btn.scale = Vector2(1,1)
		btn.custom_minimum_size = TailCarte
		#btn.name = ListeCarte[i]
		#btn.size.x = 576
		#btn.size.y = 648
		btn.z_index = 1
		
		container.position = Vector2(xOrigine+(TailCarte.x+10)*(i%3),yOrigine+(TailCarte.y+10)*(i/3))
		
		
		btn.button_down.connect(pressed)
		print(carte)
		print("Nom:",carte.nom)
		print("Position:",container.position)
		print("--------------")
	print("Fin ListeCarte ")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func sourie():
	print("c'est bon")

func pressed():
	pass
	#print(btn)      (trouver le nom du btn (voir le changer si possible(voir trouver le nom de la carte )))
