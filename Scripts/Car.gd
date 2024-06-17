extends VehicleBody3D

# Define your constants
const GRAVITY: float = -9.8
const MAX_SPEED: float = 20.0
const ACCELERATION: float = 0.2
const DECELERATION: float = 0.1

# Define your variables
var velocity = Vector3()

func _physics_process(_delta) -> void:
	if Input.is_action_pressed("ui_right"):
		steering = lerp(steering, deg_to_rad(-30), 0.05)
	if Input.is_action_pressed("ui_left"):
		steering = lerp(steering, deg_to_rad(30), 0.05)
	if not Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		steering -= lerp(steering, deg_to_rad(0), 0.0005)

	if Input.is_action_pressed("ui_down"):
		if engine_force > -80:
			engine_force -= 1
	if Input.is_action_pressed("ui_up"):
		if engine_force < 70:
			engine_force = 70
		if engine_force < 100:
			engine_force += 1
