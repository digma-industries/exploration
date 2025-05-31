extends Control

func _ready() -> void:
    $MarginContainer/VBoxContainer/StartButton.grab_focus()

func _on_start_button_pressed() -> void:
    get_tree().change_scene_to_file("res://scenes/main_menu/main_menu.tscn") # todo ainskeep change me to start game scene


func _on_options_button_pressed() -> void:
    get_tree().change_scene_to_file("res://scenes/options_menu/options_menu.tscn")


func _on_quit_button_pressed() -> void:
    get_tree().quit()
