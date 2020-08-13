extends Node2D

onready var text = get_parent().get_node("Text_bentuk")

func _ready():
	pass

func _process(delta):
	if text.page == 0:
		$Bentuk/"0".visible = true
		
	if text.page == 2:
		$Bentuk/"0".visible = false
		$Bentuk/"1".visible = true
	if text.page == 4:
		$Bentuk/"1".visible = false
		$Bentuk/"2".visible = true
	if text.page == 6:
		$Bentuk/"2".visible = false
		$Bentuk/"3".visible = true
	if text.page == 8:
		$Bentuk/"3".visible = false
		$Bentuk/"4".visible = true
	if text.page == 10:
		$Bentuk/"4".visible = false
		$Bentuk/"5".visible = true
	if text.page == 12:
		$Bentuk/"5".visible = false
		$Bentuk/"6".visible = true
	if text.page == 14:
		$Bentuk/"6".visible = false
		$Bentuk/"7".visible = true
	if text.page == 16:
		$Bentuk/"7".visible = false
		$Bentuk/"8".visible = true
		
		