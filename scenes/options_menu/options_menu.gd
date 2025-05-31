extends Control

func _ready() -> void:
    $MarginContainer/VBoxContainer/ExitButton.grab_focus()

func _on_exit_button_pressed() -> void:
    get_tree().change_scene_to_file("res://scenes/main_menu/main_menu.tscn")


func _on_volume_value_changed(value: float) -> void:
  AudioServer.set_bus_volume_db(0, value)


func _on_mute_button_toggled(toggled_on: bool) -> void:
  AudioServer.set_bus_mute(0, toggled_on)
