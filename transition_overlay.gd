extends TextureRect

signal faded_in
signal faded_out
signal faded


func fade_in():
	$AnimationPlayer.play(&"fade_in")


func fade_out():
	$AnimationPlayer.play(&"fade_out")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	match anim_name:
		&"fade_in": faded_in.emit()
		&"fade_out": faded_out.emit()
	faded.emit()
