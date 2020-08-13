extends Node2D

onready var text = get_parent().get_node("TextTree")

func _ready():
	pass

func _process(delta):
	if text.page == 0 :
		$Tree/"1".visible = true
	if text.page == 5 :
		$Tree/"1".visible = false
		$Tree/"2".visible = true
	if text.page == 7 :
		$Tree/"2".visible = false
		$Tree/"1".visible = true