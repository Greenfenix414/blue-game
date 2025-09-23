extends CharacterBody2D
var speed = 50
var dir=1
func _physics_process(delta):
	var movement = Input.get_vector("left", "right", "up", "down")
	velocity=movement*speed
	move_and_slide()			
	
func _process(_delta):
	if Input.is_action_pressed("up"):
		dir=0
		$AnimatedSprite2D.play(str(dir))
	elif Input.is_action_pressed("down"):
		dir=1
		$AnimatedSprite2D.play(str(dir))
	elif Input.is_action_pressed("left"):
		dir=2
		$AnimatedSprite2D.play(str(dir))
	elif Input.is_action_pressed("right"):
		dir=3
		$AnimatedSprite2D.play(str(dir))
	else:
		$AnimatedSprite2D.animation="idle"
		$AnimatedSprite2D.frame=dir
		pass
		
