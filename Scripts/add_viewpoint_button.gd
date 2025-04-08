extends PanelContainer

func _on_button_pressed() -> void:
	var VP_Container = %"VP-Container"
	var scene_to_instance = load("res://scenes/Viewpoint.tscn")
	var instance = scene_to_instance.instantiate()
	VP_Container.add_child(instance)
