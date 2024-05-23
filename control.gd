extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TransitionOverlay.connect("faded_out", _on_faded_out)


func _on_faded_out():
	$FadeInButton.move_to_front()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fade_in_button_pressed() -> void:
	$TransitionOverlay.move_to_front()
	$TransitionOverlay.fade_in()


func _on_fade_out_button_pressed() -> void:
	$TransitionOverlay.move_to_front()
	$TransitionOverlay.fade_out()

