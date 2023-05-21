extends Control

var _button_texts = ['More', 'Moar', 'more', 'moor', 'Morr', 'AGANE', 'Again', 'Send',
	'MORE', 'SEND', 'MOAR', 'AGAIN', 'FULL SEND', 'SEND IT']

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


func _on_Button_pressed():
	$jibberish.text = Lib.jibberate()
	$Button.text = _button_texts[randi() % _button_texts.size()]
