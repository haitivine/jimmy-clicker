class_name jimmyclick
extends Control

var jimmy : int = 0
@export var jc : Label
@onready var click_jimmy2: TextureRect = $Panel/Button/TextureRect

func _on_button_pressed() -> void:
	click_jimmy()
	
func click_jimmy() -> void:
	jimmy += 1
	var tween = get_tree().create_tween()
	tween.tween_property(click_jimmy2, "scale", Vector2(.9, .9), 0.05)
	tween.tween_property(click_jimmy2, "scale", Vector2(1, 1), 0.05)
	$Click.play()
	update_text()
	
func update_text() -> void:
	jc.text = "Jimmys Clicked: %s" %jimmy


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/jimmymenu.tscn")
