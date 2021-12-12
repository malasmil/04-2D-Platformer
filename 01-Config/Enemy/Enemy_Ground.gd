extends KinematicBody2D

export var speed = 2
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO



func _physics_process(_delta):
	if direction > 0 and $Sprite.flip_h:
		$Sprite.flip_h = true
	if direction > 0 and $Sprite.flip_h:
		$Sprite.flip_h = false
		
	velocity.x += direction * speed
	move_and_slide(velocity, Vector2.UP)
	
