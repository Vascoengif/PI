extends Control


var index =0


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN) #esconde o rato

func _input(event):
#	if event.is_action("btn_up") && event.is_pressed() && !event. is_echo():
#		if(index !=0):
#			index -=1
#			var x = get_node("Selected").get_pos().x
#			var y = get_node("Selected").get_pos().y -90
#			get_node("Selected").set_pos(Vector2(x,y))
#	if event.is_action("btn_down") && event.is_pressed() && !event. is_echo():
#		if(index !=2):
#			index +=1
#			var x = get_node("Selected").get_pos().x
#			var y = get_node("Selected").get_pos().y +90
#			get_node("Selected").set_pos(Vector2(x,y))
#	if event.is_action("btn_return") && event.is_action_pressed() && !event.is_echo():
#		if(index == 0):
#			print ("New Game")
#		if(index == 1):
#			print("Single Player")
#		if(index == 2):
#			print("2Players")

	pass