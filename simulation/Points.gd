extends NinePatchRect
var weight
var points
signal onPointsConvert()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_on_e_pressed():
	weight = get_node("/root/main/Interface/Trash").get("value")
	$Value.text = str(int($Value.text) + weight / 200) #every 200g = 1 point(s)
	emit_signal("onPointsConvert")
