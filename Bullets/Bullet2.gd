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
	for e in enemies:
		e.queue_free()
	queue_free()


func _on_Area2D_body_entered(body):
	enemies.appened(body)


func _on_Area2D_body_exited(body):
	for e in enemies:
		if body.name == e.name:
			enemies.erase(e)
