extends RichTextLabel

var dialog = ["Tree (pohon)",
"Tree atau pohon merupakan salah satu jenis graf yang menarik di pelajari. Bukan hanya karena fungsinya yang berbagai macam, tetapi juga karena keunikannya dari nama dan bentuk dibandingkan graf lainnya.",
"Tree atau pohon dalam Matematika Diskrit tidak berbeda jauh dengan pohon yang kita lihat di sekeliling kita.",
"Kenapa?",
"Karena pada dasarnya, Tree adalah graf yang memiliki 'dahan' dan 'cabang' yang memiliki bentuk sama persis dengan pohon. Dalam pengertian dasarnya, Tree atau pohon adalah graf tak berarah terhubung, yang tidak memiliki sirkuit.",
"Selain itu, ada juga tingkat lanjut dari Tree, yaitu Forest atau Hutan. Lagi-lagi, bentuk hutan yang akan kita pelajari tidak jauh berbeda dari hutan yang sudah kita ketahui.",
"Pengertian dasarnya, Forest atau Hutan adalah sekumpulan pohon yang tidak saling berhubungan. Mudah, kan?",
"Teorema pohon :",
"Karena pohon merupakan bagian dari graf, mereka memiliki rumus yang sama, yaitu G = ( V, E). Tetapi, ada beberapa ketentuan yang dimiliki pohon.",
"1. G terhubung, dan memiliki m = n - 1 buah sisi.",
"2. Pohon tidak memiliki sirkuit. Jika sudah membentuk sebuah sisi, sisi tersebut tidak akan kembali ke arahnya.",
"3. Penambahan satu sisi pada graf akan membuat hanya satu sirkuit.",
"4. G terhubung, dan semua sisinya adalah jembatan."
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
		get_tree().change_scene("res://Scenes/Quiz_Tree.tscn")
