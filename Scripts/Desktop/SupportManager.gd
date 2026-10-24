extends Panel

var dragging := false
var previousMousePosition := Vector2.ZERO

func _process(_delta: float) -> void:
	if dragging:
		var currentMousePosition := get_viewport().get_mouse_position()
		var mouseDelta = currentMousePosition - previousMousePosition
		position += mouseDelta
		previousMousePosition = currentMousePosition

func _exit_button_pressed() -> void:
	visible = false


func _drag_on() -> void:
	dragging = true
	previousMousePosition = get_viewport().get_mouse_position()


func _drag_off() -> void:
	dragging = false


func _open_pressed() -> void:
	visible = true