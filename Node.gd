extends Node


# Declare member variables here. Examples:

var rng = RandomNumberGenerator.new()

var arrFacil = ["bola", "relógio", "telefone", "carregador", "água", "toalha", "portátil", "tomada"]

var arrMedio = ["holofote","individuais", "python", "frigorifico", "instagram" ]

var arrDificil = ["ortopedia", "espanador", "malmequer", "esquentador", "paradigma"]


# Called when the node enters the scene tree for the first time.
func _ready():
	
	rng.randomize()
	
	var randomF = rng.randi_range(0, arrFacil.size() - 1)
	var randomM = rng.randi_range(0, arrMedio.size() - 1) 
	var randomD = rng.randi_range(0, arrDificil.size() - 1)
	
	
	print(addLetters(hasLetter(2, 'm', arrDificil), 'e', arrDificil, 2))
	print(addLetters(addLetters(hasLetter(2, 'm', arrDificil), 'e', arrDificil, 2), 'a', arrDificil, 2))
	

func hasLetter(indexArr, letter, arr): #quero percorrer o array e usar o index para colocar uma letra se esta existir-
	
	var word = arr[indexArr]
	var count = 0
	
	for i in word:
		if letter == i:
			 word[count] = letter
				
		else:
			word[count] = '_'
		
		count += 1
			
	return word



func addLetters(word, letter, arr, index):
	
	var word1 = arr[index] 
	var count = 0
	
	for i in word:
		if i == '_' && word1[count] == letter:
			word[count] = letter
			
		count += 1	
	return word
		
		
		
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass