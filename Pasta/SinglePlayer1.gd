extends Control

func _on_Button_pressed():
	get_tree().change_scene('res://Pasta/TitleScreen.tscn')
	
	
	
#extends Node
#var list = [  "apple","turnip","banana","clock","cup","flower","fork","glasses","oranage","pencil","spoon"]
#var selected_word
#var selected_word_breakdown = []
#var letters_needed
#var hidden_word = []
#var hangman_lives = 0
#var secret_word

#func _ready():
#	randomize()
#	new_game()
#	
#func new_game():
#	choose_random_word()
#	breakdown_random_word()
#	prepare_hidden_word()
#	convert_to_string()
#	load_image()



#func breakdown_random_word():
#	for letters in selected_word:
#		selected_word_breakdown.append(letters)



#func prepare_hidden_word():
#	for letters in selected_word:
#		hidden_word.append("_ ")




#func check_word_for_letter(_single_letter):
#	var count = 0
#	var letter_found1 = false
#	for i in selected_word_breakdown:
#		if _single_letter == i:
#			hidden_word[count] = i+" "
#			letter_found1 = true
#		count += 1
#		convert_to_string()
#	if !letter_found1:
#	check_win_condition()
	
	
	
	
#func convert_to_string():
#	secret_word = PoolStringArray(hidden_word).join("")
#	$MarginContainer/Area_Guess/HBoxContainer/VBoxContainer/HiddenWordText.text = secret_word
	
	
	
#func check_win_condition():
#	var word1 = secret_word
#	var word2 = selected_word
#	var word3 = []
#	var word4
#	for i in word1:
#		if !i == " ":
#			word3.append(i)
#	word4 = PoolStringArray(word3).join("")
#	if word4 == word2:
#		end_game()
		
		
		
		
#func end_game():
#	$MarginContainer/Area_Input/VBoxContainer/HBoxContainer/RestartButton.show()






#func load_image():
#	var image_address = "res://Images/Word_Images/"+selected_word+".png"
#	$MarginContainer/Area_Guess/HBoxContainer/ImageHint.texture = load(image_address)




#func check_for_hangman():
#	hangman_lives += 1
#	if hangman_lives >= 8:
#		end_game()
#	else:
#		var hangman_image_address = "res://Images/Hangman_Images/hangman"+str(hangman_lives)+".png"
#		$MarginContainer/Area_Guess/HBoxContainer/HangManImage.texture = load(hangman_image_address)


#----------------------------------------------------------------------------------------------------------------------------


#func _on_A_pressed():
#	check_word_for_letter("a")
#	$HBoxContainer/VboxContainer/A.disabled = true

#func _on_B_pressed():
#	check_word_for_letter("b")
#	$HBoxContainer/VboxContainer2/B.disabled = true

#func _on_C_pressed():
#	check_word_for_letter("c")
#	$HBoxContainer/VboxContainer3/C.disabled = true

#func _on_D_pressed():
#	check_word_for_letter("d")
#	$HBoxContainer/VboxContainer4/D.disabled = true

#func _on_E_pressed():
#	check_word_for_letter("e")
#	$HBoxContainer/VboxContainer5/E.disabled = true

#func _on_F_pressed():
#	check_word_for_letter("f")
#	$HBoxContainer/VboxContainer6/F.disabled = true

#func _on_G_pressed():
#	check_word_for_letter("g")
#	$HBoxContainer/VboxContainer7/G.disabled = true

#func _on_H_pressed():
#	check_word_for_letter("h")
#	$HBoxContainer/VboxContainer8/H.disabled = true

#func _on_I_pressed():
#	check_word_for_letter("i")
#	$HBoxContainer/VboxContainer9/I.disabled = true

#func _on_J_pressed():
#	check_word_for_letter("j")
#	$HBoxContainer/VboxContainer10/J.disabled = true

#func _on_K_pressed():
#	check_word_for_letter("k")
#	$HBoxContainer/VboxContainer11/K.disabled = true

#func _on_L_pressed():
#	check_word_for_letter("l")
#	$HBoxContainer/VboxContainer12/L.disabled = true

#func _on_M_pressed():
#	check_word_for_letter("m")
#	$HBoxContainer/VboxContainer13/M.disabled = true