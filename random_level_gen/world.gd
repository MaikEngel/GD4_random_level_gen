extends Node2D

var borders = Rect2(1, 1, 38, 21)

@onready var tile_map = $TileMap



# Called when the node enters the scene tree for the first time.
func _ready():
	generate_level()
	
func generate_level(): 
	var walker = Walker.new(Vector2(19,  11), borders)
	var map = walker.walk(500)
	walker.queue_free()
	for location in map :
		print(location)
		tile_map.set_cell(0, Vector2(location), -1, Vector2i(1,1))
	
