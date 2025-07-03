extends Node

var score = 0
var total_coins = 0

@onready var score_label: Label = $ScoreLabel
@onready var win_label: Label = $WinLabel

func _ready():
	win_label.visible = false
	score = 0
	total_coins = 0

func register_coin():
	total_coins += 1
	
	
func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins"
	
	if score >= total_coins:
		show_win_message()
func show_win_message():
	win_label.text = "You Win!"
	win_label.visible = true
