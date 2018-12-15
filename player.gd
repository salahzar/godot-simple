extends KinematicBody
var counter = 0

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var direction = Vector3()
var speed = 600

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

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
