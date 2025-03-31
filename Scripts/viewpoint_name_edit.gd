extends Control

#Set Variables
var line_edit = LineEdit

#Call Resources:
@export var contents : ViewpointContents

func _ready() -> void:
	line_edit = $CenterContainer/VBoxContainer/Panel/LineEdit


func _input(event):
	if event.is_action_pressed("Close"):
		queue_free()
	if event.is_action_pressed("SubmitText"):
		var NewText = line_edit.get_text()
		contents.Viewpoint_Name = NewText
		print("Updated Viewpoint_Name: ", contents.Viewpoint_Name)
		queue_free()
