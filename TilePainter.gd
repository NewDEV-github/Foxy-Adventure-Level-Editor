extends TileMap


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var _tileset
func _ready():
	_tileset = get_tileset()
# Called when the node enters the scene tree for the first time.
func paint_tile(position:Vector2,tile_id:int):
	set_cellv(world_to_map(position), _tileset.find_tile_by_name(str(MainSingleton.current_tile_name)))
