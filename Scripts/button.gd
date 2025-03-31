extends Button

#Button Variables:
@export var ButtonText : String = ""
var line_edit : LineEdit

#Resource Variables:
@export var contents : ViewpointContents

func _ready() -> void:
	if contents != null:
		contents.Viewpoint_Name = ButtonText
		set_text(contents.Viewpoint_Name)
	else:
		print("Resource is not assigned")
	line_edit = $"../LineEdit"

func _process(delta: float) -> void:
	set_text(contents.Viewpoint_Name)


func _on_pressed() -> void:
	hide()
	if line_edit:
		line_edit.show()

func _on_text_submitted(new_text: String) -> void:
	contents.Viewpoint_Name = new_text
	line_edit.hide()
	show()
