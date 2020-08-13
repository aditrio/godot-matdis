extends Node2D

onready var text = get_parent().get_node("Text")
func _ready():
	pass

func _process(delta):
	if text.page == 0:
		$sejarah/"1".visible = true
	if text.page == 3:
		$sejarah/"1".visible = false
		$sejarah/"2".visible = true
	if text.page == 5:
		$sejarah/"2".visible = false
		$sejarah/"3".visible = true
	if text.page == 7:
		$sejarah/"3".visible = false
		$sejarah/"4".visible = true
	if text.page == 10:
		$sejarah/"4".visible = false
		$sejarah/"5".visible = true
	if text.page == 13:
		$sejarah/"5".visible = false
		$sejarah/"6".visible = true
	if text.page == 15:
		$sejarah/"6".visible = false
		$sejarah/"7".visible = true
	if text.page == 17:
		$sejarah/"7".visible = false
		$sejarah/"9".visible = true
	if text.page == 20:
		$sejarah/"9".visible = false
		$sejarah/"8".visible = true