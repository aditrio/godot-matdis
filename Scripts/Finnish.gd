extends Node2D

onready var tf = load("res://Scripts/Quiz.gd").benar

func _ready():
	pass

func _process(delta):
	$tf.text = "BENAR : " + tf 