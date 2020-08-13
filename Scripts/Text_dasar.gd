extends RichTextLabel

var dialog = ["Jadi, apa itu graph?",
"Graf adalah suatu himpunan objek yang biasa disebut node/vertex dan dihubungkan dengan edge/arc. Sederhananya, graf bisa dibayangkan seperti gambar di atas ",
"Sederhana, kan? Kasarnya, selama ada beberapa 'titik' dan 'garis' yang menghubungkan mereka, maka itulah graf.",
"Walaupun sederhana, graf sangat bermanfaat di cabang matematika dan komputer. Banyak masalah yang bisa diselesaikan dengan bantuan graf.",
"Contohnya, jaringan persahabatan pada Facebook yang biasa kita mainkan pun bisa direpresentasikan dengan graf. Nodenya adalah para pengguna Facebook, dan ada garis yang menghubungkan mereka (edge).",
"Penjelasan lebih dalam : Jika dirumuskan menggunakan persamaan matematika, Graf dapat dituliskan sebagai berikut : G = Graf V = Vertex/Node E = Edge/Arc",
"Contohnya pengerjaannya bisa dilihat seperti gambar diatas :",
"Jika diperhatikan, di dalam graf tersebut terdapat 4 buah node, yaitu A, B, C, dan D. Maka dapat ditulis sebagai berikut : V = { A, B, C, D }",
"selain itu, graf tersebut memiliki beberapa sisi/garis yang menghubungkan antar node. Dapat dituliskan sebagai berikut :",
"E = { (A, B), (A, C), (A, D), (B, C), (C, D) } Mudah, kan?😉",


]
var page = 0
var next = false
var prev = false


func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)

func _process(delta):
	if next :
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size()-1 :
				page+=1
				set_bbcode(dialog[page])
				set_visible_characters(0)
				next = false
	if prev :
		page-=1
		set_bbcode(dialog[page])
		set_visible_characters(0)
		prev = false
	if page == 0 :
		get_parent().get_node("prev").disabled = true
	else :
		get_parent().get_node("prev").disabled = false
	
	if visible_characters >= 25 :
		scroll_following = true
	else :
		scroll_following = false
		
func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)


func _on_prev_pressed():
	prev = true

func _on_next_pressed():
	next = true
	if page == 20:
		get_tree().change_scene("res://Scenes/Quiz_sejarah.tscn")
