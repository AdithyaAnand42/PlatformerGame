extends Area2D


@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":  # Make sure this matches your player node name
		game_manager.show_score()

func _ready():
	# Connect the signal if not already connected in the editor
	body_entered.connect(_on_body_entered)
