extends Area3D
signal onEPressed()
var onPlayerNear
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if onPlayerNear == true:
		$Sprite3D.visible = true
		if Input.is_action_pressed("E"):
			emit_signal("onEPressed")

	else:
		$Sprite3D.visible = false




func _on_body_entered(body):
	if body.is_in_group("Player"):
		onPlayerNear = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		onPlayerNear = false
