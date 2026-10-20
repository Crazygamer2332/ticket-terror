extends Button

@export var desktopScene: PackedScene

func _pressed() -> void:
	get_tree().change_scene_to_packed(desktopScene)