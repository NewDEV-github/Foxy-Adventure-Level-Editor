extends Panel


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
signal new_tile_selected

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass



func tile_selected(extra_arg_0: String) -> void:
	emit_signal("new_tile_selected", extra_arg_0)
