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
	print(randomWord())
	print(lettersToArray())
	print(displayStartWord())
	print(hasLetter('t'))
	
#Mete a String que queremos adivinhar num array 
func lettersToArray():
	for i in word:
		replaceWord.append(i)
		
func displayStartWord():
	for i in word:
		hiddenWord.append('_ ')

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
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#   pass