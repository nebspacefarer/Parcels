extends Camera3D

@export var target_node: Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	if target_node:
		global_position = Vector3(target_node.global_position.x, global_position.y, target_node.global_position.z+14)
		#rotation.y = -target_node.rotation.y
