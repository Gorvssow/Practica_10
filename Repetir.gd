extends Node2D


func _ready():
	pass 

func _on_replay_Button_pressed():
	get_tree().change_scene("res://Juego1.tscn") 

func _on_quit_Button_pressed():
	get_tree().quit() 
