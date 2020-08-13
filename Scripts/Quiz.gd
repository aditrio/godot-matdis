extends Node2D

var quest = 1
var benar = 0
var salah = 0


var soal = [
	"Himpunan dari objek-objek yang dinamakan titik, simpul, atau sudut dihubungkan oleh penghubung yang dinamakan garis atau sisi:",
	"Rumus graph yaitu",
	"Berikut adalah nama-nama bentuk graf, manakah yang bukan graf?",
	"Graph yang memiliki ciri ciri memiiki node yang berputar ke node asal (loop/berputar) adalah?",
	"Di kota apa teka-teki itu terjadi?",
	"Siapa yang menyelesaikan teka-teki tersebut?",
	"Graf tak-berarah terhubung yang tidak mengandung sirkuit merupakan pengertian dari?",
	"Graf tak terhubung yang tidak mengandung sirkuit. ",
	
	
	
]
func _ready():
	$Label.visible = false
	$Label2.visible = false

func _process(delta):
	if quest == 1 :
		$Soal/"1".text = soal[0]
		$Options/"A".text = "HASH"
		$Options/"B".text = "TREE"
		$Options/"C".text = "GRAPH"
	if quest == 2 :
		$Soal/"1".text = soal[1]
		$Options/"A".text = "E=(V,G)"
		$Options/"B".text = "G=(V,E)"
		$Options/"C".text = "E=(G,V)"
	if quest == 3 : 
		$Soal/"1".text = soal[2]
		$Options/"A".text = "Graf kompleks"
		$Options/"B".text = "Graf pohon"
		$Options/"C".text = "Graf kosong"
	if quest == 4 : 
		$Soal/"1".text = soal[3]
		$Options/"A".text = "Graf Berarah"
		$Options/"B".text = "Graf Semu"
		$Options/"C".text = "Graf Berbobot"
	if quest == 5 : 
		$Soal/"1".text = soal[4]
		$Options/"A".text = "Konigsberg"
		$Options/"B".text = "Munchen"
		$Options/"C".text = "Roma"
	if quest == 6 : 
		$Soal/"1".text = soal[5]
		$Options/"A".text = "Leonard Euler"
		$Options/"B".text = "Leonardo Euler"
		$Options/"C".text = "Leonhard Euler"
	if quest == 7 : 
		$Soal/"1".text = soal[6]
		$Options/"A".text = "TREE"
		$Options/"B".text = "NODE"
		$Options/"C".text = "FOREST"
	if quest == 8 : 
		$Soal/"1".text = soal[7]
		$Options/"A".text = "NODE"
		$Options/"B".text = "TREE"
		$Options/"C".text = "FOREST"
	
	if quest == 9 :
		$ColorRect.visible = false
		$ColorRect2.visible = false
		$Options.visible = false
		$Soal.visible= false
		$Label.visible = true
		$Label2.visible = true
		$Label2.text = "benar : " + str(benar) +  " salah : " + str(salah)
		$Back.visible = true


func _on_A_pressed():
	if quest == 3 || quest == 5 || quest == 7:
		benar += 1
	else :
		salah += 1
	quest += 1
	

func _on_B_pressed():
	if quest == 2 || quest == 4 || quest == 8:
		benar += 1
	else :
		salah += 1
	quest += 1

func _on_C_pressed():
	if quest == 1 || quest == 6:
		benar += 1
	else : 
		salah +=1
	quest += 1
	
