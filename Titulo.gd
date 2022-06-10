extends Node2D


func _ready():
	pass # Replace with function body.


func _on_start_TextureButton_pressed():
	get_tree().change_scene("res://Juego1.tscn") 


func _on_quit_TextureButton_pressed():
	get_tree().quit() 
