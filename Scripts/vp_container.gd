extends VBoxContainer

func _ready() -> void:
	print("Children of VBoxContainer:", get_children())
	var child_scene = get_node("Control/CenterContainer/ScrollContainer/VP-Container")
	if child_scene:
		print("Child scene found:", child_scene.name)
		var button = child_scene.get_node("Button")
		if button:
			print("Button found:", button.name)
