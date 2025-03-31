extends Button

#Button Variables:
@export var ButtonText : String = ""

#Resource Variables:
@export var contents : ViewpointContents

func _ready() -> void:
	if contents != null:
		contents.Viewpoint_Name = ButtonText
		set_text(contents.Viewpoint_Name)
	else:
		print("Resource is not assigned")
