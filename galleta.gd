extends RigidBody2D

var game_inicio : bool = false
onready var break_s : AudioStreamPlayer = get_node("break")
onready var hit_s :  AudioStreamPlayer = get_node("hit")
onready var lose_s : AudioStreamPlayer = get_node("lose")
onready var start_s : AudioStreamPlayer = get_node("start")
onready var you_win_s : AudioStreamPlayer = get_node("you_win")

func _ready():
	pass 

func _physics_process(_delta):
	for body in get_colliding_bodies():
		if body.get_name() == "borde":
			print("PERDISTE")
			lose_s.play()
			yield(lose_s,"finished")
			queue_free()
			get_tree().change_scene("res://Repetir.tscn") 
		if body.is_in_group("group_bloque"):
			body.queue_free()
			break_s.play()
		if body.get_parent().get_child_count() == 1:
			print("GANASTE")
			you_win_s.play()
			yield(you_win_s,"finished")
			queue_free()
			get_tree().change_scene("res://Repetir.tscn")
		else:
			hit_s.play()
		
func _input(event):
	if event.is_action_pressed("ui_up") and game_inicio == false:
		linear_velocity = Vector2(-200,30)
		game_inicio = true
		start_s.play()

