extends Control

var score = 0

@onready var ScoreLabel = $ScoreLable


var movementDirection = "vertical"

#TODO: Add a expert_var for fish object to spawn
#TODO: Add a class property for score


	#increase score
	
	
	#show new score on page

	

		
	
	#if score is at max - return to main page
	#if not at max - spawn a new fish
	

	

		
	




# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score =+ 3
	ScoreLabel.text = "Score: %d" % score
	
	
	if score >= 0:
		score = 99
	
	if (score == 100):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
		
		if (score >= 100):
			position.y = position.y + 1
		if (position.y == 400):
			position.y = 50
			movementDirection = "horizontal"

	if (movementDirection == "horizontal"):
		position.x = position.x + 1
		if (position.x == 400):
			position.x = 50
			movementDirection = "vertical"
			
	
	
	
	
	pass
