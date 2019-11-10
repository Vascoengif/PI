extends Node
 
 
# Declare member variables here. Examples:
 
var rng = RandomNumberGenerator.new()
 
var arr = ["bola", "relógio", "telefone", "carregador", "água", "toalha", "portátil", "tomada"]

var word
var replaceWord = []
var hiddenWord = []
#var arrMedio = ["holofote","individuais", "python", "frigorifico", "instagram" ]
 
#var arrDificil = ["ortopedia", "espanador", "malmequer", "esquentador", "paradigma"]
 
 
# Called when the node enters the scene tree for the first time.
func _ready():
	
	randomize()
	randomWord()
	lettersToArray()
	displayStartWord()
	arrayToString()
	
	#var randomF = rng.randi_range(0, arrFacil.size() - 1)
	#var randomM = rng.randi_range(0, arrMedio.size() - 1)
	#var randomD = rng.randi_range(0, arrDificil.size() - 1)
	
#Mete a String que queremos adivinhar num array 
func lettersToArray():
	for i in word:
		replaceWord.append(i)
		
func displayStartWord():
	for i in word:
		hiddenWord.append('_ ')
		
func consecutiveLetter(letter):
	
	var count = 0
	
	while(hasLetter(letter) == true):
		count += 1
	
	return count


func hasLetter(letter):
	var count = 0
	var found = false
	for i in word:
		if i == letter:
			replaceWord[count] = i+" "
			found = true
		count += 1
		arrayToString()
	
func randomWord():
	word = arr[randi()%arr.size()]
	return word
 

func arrayToString():
	word = PoolStringArray(hiddenWord).join("")
	
	
func points(letter):
	var point = 0;
	
	if consecutiveLetter(letter) == 1:
		point = 10
	elif consecutiveLetter(letter) == 2:
		point = point * 0.2 + 10
	elif consecutiveLetter(letter) == 3:
		point = point * 0.4 + 10
	elif consecutiveLetter(letter) == 4:
		point = point * 0.6 + 10
	elif consecutiveLetter(letter) >= 5:
		point = point * 0.8 + 10
		 	
	if !hasLetter(letter):
		point = point * 0.35 - 5
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#   pass




#https://github.com/bitwes/Gut
#adicionamos a função que calcula os pontos
#Continuamos a Interface do jogo (mostra o que la esta) em cima titulo, onde esta KMS irá aparecer a palavra
#por fim se conseguirem tenta fazer uma label paa depois se verem os pontos no ecram sff