extends RichTextLabel

var dialog = ["Kisah ini bermula di sebuah kota di Jerman" ,
 "Nama kota ini adalah Konigsberg. Walaupun namanya aneh dan susah disebut, kota yang indah ini penduduknya ramah-ramah dan tidak terlalu banyak konflik.",
"Ya... setidaknya sampai hari itu tiba",
"Hari di mana seorang turis menanyakan hal yang di luar akal mereka.",
"Turis itu adalah orang yang bersahabat. Rasa penasarannya tinggi, wajahnya tampan dan gaya bicaranya yang menyenangkan membuat penduduk setempat suka dengannya.",
"Pada suatu hari, dia berencana untuk mengelilingi kota tersebut untuk terakhir kalinya, sebelum dia pulang ke tempat asalnya. Sayangnya, kota tersebut dikelilingi oleh sungai yang membuatnya tidak bisa berjalan-jalan dengan leluasa. Untuk menyebrang ke sisi lainnya, dia harus melalui 7 jembatan yang berbeda-beda.",
"Merasa cemas dengan kendala tersebut, dia pun bertanya dengan penduduk setempat tentang cara untuk pergi ke setiap tempat tanpa melalui jembatan yang sama dua kali. Sayangnya, menurut mereka hal itu tidak mungkin bisa dilakukan.",
"Karena rasa penasarannya yang tinggi, turis itu pun mempertanyakan satu hal sederhana :",
"'Kenapa tidak bisa?'",
"Benar… itu adalah satu pertanyaan sederhana yang tentunya bisa dijawab dengan jawaban sederhana.",
"Namun, jawaban yang sederhana itu tidak ada seorang pun yang mengetahuinya.",
"Bagi penduduk setempat, itu adalah hal wajar untuk melalui salah satu jembatan 2 kali agar bisa mengunjungi semua tempat. Mau seefektif apa pun rute yang mereka ambil, tidak mungkin mereka bisa melewati setiap jembatan hanya satu kali.",
"Mereka tahu itu. Mereka bisa membuktikan hal itu. Tapi jika ditanya 'kenapa ?', tidak ada yang berani menjawab hal itu.",
"Teka-teki ini pun sampai ke telinga seorang matematikawan bernama Leonhard Euler. Dengan pengetahuan yang dimilikinya, dia pun berminat untuk memecahkan misteri yang menarik perhatiannya itu.",
"Tujuh jembatan. Menuju tempat yang berbeda-beda. Untuk melewati seluruh jembatan, harus ada satu jembatan yang dilewati dua kali.",
"Dengan informasi yang sedikit dan sederhana itu, Leonhard pun mulai membuat ilustrasi dengan beberapa penyederhanaan.",
"Tujuh jembatan dilambangkan dengan garis.",
"Tujuannya dilambangkan dengan titik.",
"Hanya dengan penyederhanaan itu, Euler pun berhasil membuat kesimpulan yang sederhana pula, namun tidak ada yang menyadarinya.",
"Kesimpulan itu pun terlahir menjadi sebuah teori. Teori yang diberi nama Graf, ilmu yang mempelajari titik-titik dan garis yang menghubungkan mereka",
"“Andai kita mempunyai sebuah multigraph untuk beberapa pasang verteks sehingga akan terdapat sebuah path (lintasan) diantara verteks-verteks tersebut. Multigraph tersebut memiliki eulerian  path dan jika terdapat 0 datau 2 verteks tersebut maka banyak edge yang meninggalkan verteks tersebut akan berjumlah ganjil”-Leonhard Euler",

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
		get_parent().get_node("Button").disabled = true
	else :
		get_parent().get_node("Button").disabled = false
		
	if visible_characters >= 25 :
		scroll_following = true
	else :
		scroll_following = false
		

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)


func _on_Button_pressed():
	prev = true
	


func _on_Button2_pressed():
	next = true
	if page == 20:
		get_tree().change_scene("res://Scenes/Quiz_sejarah.tscn")
