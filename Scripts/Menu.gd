extends Node2D

func _ready():
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Sejarah.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/GraphDasar.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/BentukGraph.tscn")
	


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/Tree.tscn")
	


func _on_Button5_pressed():
	get_tree().change_scene("res://Scenes/About.tscn")
	


func _on_Button6_pressed():
		get_tree().change_scene("res://Scenes/Quiz.tscn")
