extends Area3D
@export var weight = 500
signal on_trash_collected(trash_weight)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_body_entered(body):
	if body.is_in_group("Player"):
		print('amogus')
		queue_free()
		emit_signal("on_trash_collected", weight)
