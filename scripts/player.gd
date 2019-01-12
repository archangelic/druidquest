extends KinematicBody2D

var initpos = Vector2()
var direction = Vector2()
var speed = 10
var tilesize = 32

enum facing {
	up,
	down,
	left,
	right
}

func _process(delta):
	direction = Vector2()
	if Input.is_action_pressed('ui_right'):
		direction.x += 1
	if Input.is_action_pressed('ui_left'):
		direction.x -= 1
	if Input.is_action_pressed('ui_down'):
		direction.y += 1
	if Input.is_action_pressed('ui_up'):
		direction.y -= 1
	position = initpos + direction * speed * delta * tilesize
	initpos = position