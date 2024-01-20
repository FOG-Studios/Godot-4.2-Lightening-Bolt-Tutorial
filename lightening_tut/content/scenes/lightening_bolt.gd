extends Node2D

# Lightening Bolt Script

@onready var bolt: Line2D = $Line2D

var processing_input: bool = false
var endPoint: Vector2 = Vector2.ZERO
var started: bool = false
var finished: bool = true

func _unhandled_input(event):
	if processing_input:
		return
	if event is InputEventScreenTouch and event.pressed:
		if event.pressed:
			if started:
				return
			elif finished:
				
				finished = false
				endPoint = event.position
				bolt.points[1] = endPoint
				processing_input = true
				var finishTween: Tween = create_tween()
				started = true
				finishTween.tween_interval(0.3)
				finishTween.tween_callback(_finish_movement)
				
				
				
				
	

func _finish_movement():
	started = false
	finished = true
	bolt.points[0] = endPoint# + (bolt.points[1] - Vector2(64, 32))
	var stopTween: Tween = create_tween()
	stopTween.tween_interval(0.1)
	await stopTween.finished
	processing_input = false
	
	pass
