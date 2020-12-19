extends TileMap


# Declare member variables here. Examples:
# var a: int = 2

var _tileset
func _ready():
	_tileset = get_tileset()
# Called when the node enters the scene tree for the first time.
func paint_tile(position:Vector2,tile_id:int):
	if MainSingleton.erase_tiles:
		set_cellv(world_to_map(position), -1)
	else:
		set_cellv(world_to_map(position), _tileset.find_tile_by_name(str(MainSingleton.current_tile_name)), MainSingleton.flip_tiles_x, MainSingleton.flip_tiles_y)

