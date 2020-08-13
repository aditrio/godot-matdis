extends RichTextLabel

var dialog = ["Graf tidak selamanya berbentuk sederhana. Satu node mungkin saja memiliki beberapa sisi. Atau sebaliknya, ada juga node yang tidak terhubung sama sekali.",
"Untuk lebih jelasnya, berikut adalah beberapa bentuk graf yang sering ditemui :",
"1.Graf kosong (Null): ",
"Graf jenis ini adalah graf yang sesuai dengan namanya, yaitu kosong atau tidak memiliki sisi. Yang ada pada graf ini hanyalah node tanpa adanya hubungan.",
"2.Graf sederhana",
"Graf ini adalah yang graf yang paling mudah dibaca. Setiap nodenya akan berhubungan dengan node lain, tetapi tidak ada dua node yang dihubungkan lebih dai 1 garis (sisi)",
"3.Graf ganda",
"Tidak seperti Graf sederhana, pada graf jenis ini sebuah node bisa berhubungan dengan node yang sama lebih dari 1 kali, sehingga membuat garisnya bercabang / ganda.",
"4.Graf semu",
"Semu di sini dapat diartikan 'palsu' atau 'tidak nyata'. Dengan kata lain, garis yang seharusnya menuju node lain malah kembali ke node dia berasal (loop / berputar).",
"5.Graf berarah",
"Tidak selamanya graf hanya sebatas node yang terhubung garis. Ada beberapa graf yang memiliki arah, sehingga memiliki beberapa aturan / urutan tertentu.",
"6.Graf berbobot",
"Pada graf jenis ini, setiap sisinya memiliki nilai / bobot yang berbeda.",
"7.Graf pohon (Tree)",
"Graf pohon adalah graf yang tidak membentuk sirkuit. Dengan kata lain, sederhananya node pada jenis graf ini tidak akan membentuk bangun datar.",
"Cukup menarik, kan?",
"Jenis-jenis graf dapat berubah tergantung bentuk dan kegunaannya. Selain contoh-contoh di atas, masih banyak sekali jenis graf yang tersebar dalam materi ini. Bentuk graf yang mana yang menarik perhatianmu? 😆",
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
