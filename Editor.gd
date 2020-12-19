
extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

signal stage_preloaded

func preload_stage(path):
	load_stage(path)
	emit_signal("stage_preloaded")
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
func load_stage(path):
	pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TileMap.paint_tile(Vector2(100, 100), 4)
func clear_all():
	$TileMap.clear()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$TileMap.paint_tile(get_global_mouse_position(), 8)

func save_level():
	var p_scn = PackedScene.new()
	p_scn.get_local_scene()
	ResourceSaver.save(MainSingleton.level_path + "/" + MainSingleton.level_name + ".tscn", p_scn)
