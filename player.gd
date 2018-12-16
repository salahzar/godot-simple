extends KinematicBody

# direzione di movimento
var direction = Vector3()

# velocità di movimento
var speed = 600

# a ogni frame ci muoviamo nella direzione indicata dal giocatore
# usando i tasti freccia
func _physics_process(delta):	
	move_and_slide(get_direction()*speed*delta,Vector3(0,1,0))
	
func get_direction():
	direction = Vector3()
	if Input.is_action_pressed("ui_up"):
		direction.x = 1
	if Input.is_action_pressed("ui_down"):
		direction.x = -1
	if Input.is_action_pressed("ui_left"):
		direction.z = -1
	if Input.is_action_pressed("ui_right"):
		direction.z = 1
	direction.normalized()
	return direction
