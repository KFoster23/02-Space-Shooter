extends KinematicBody2D

var speed = 1
var velocity = Vector2.ZERO
var enemies = []

func _physics_process(_delta):
	position += velocity
	velocity.y -= speed 
	if position.y < -600:
		queue_free()


func _on_Timer_timeout():
	queue_free()
