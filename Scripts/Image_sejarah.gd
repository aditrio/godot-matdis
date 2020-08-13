extends Node2D

onready var text = get_parent().get_node("Text_dasar")

func _ready():
	pass

func _process(delta):
	if text.page == 0 :
		$Dasar/"1".visible = true
	if text.page == 1 :
		$Dasar/"1".visible = false
		$Dasar/"2".visible = true
	if text.page == 4 :
		$Dasar/"2".visible = false
		$Dasar/"3".visible = true
	if text.page == 6 :
		$Dasar/"3".visible = false
		$Dasar/"4".visible = true
	if text.page == 8 :
		$Dasar/"4".visible = false
		$Dasar/"5".visible = true
		
		