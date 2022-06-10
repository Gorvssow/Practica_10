extends KinematicBody2D

var velocidad = 8


func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		var movimiento : Vector2 = Vector2(0,-velocidad)
		move_and_collide(movimiento)
	if Input.is_action_pressed("ui_down"):
		var movimiento : Vector2 = Vector2(0,velocidad)
		move_and_collide(movimiento)
