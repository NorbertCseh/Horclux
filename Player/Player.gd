extends CharacterBody2D

@export var speed =50

func handle_input():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection*speed
	
func _physics_process(_delta):
	handle_input()
	move_and_slide()
	
