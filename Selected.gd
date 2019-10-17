extends VBoxContainer

func _ready():
	pass # Replace with function body.
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		self.position.y -=10
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.y +=10