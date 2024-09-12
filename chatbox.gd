extends Control


const message_loaded = preload("res://message.tscn")


func _ready()->void:
	%LineEdit.grab_focus()


func _on_line_edit_new_msg(msg: String) -> void:
	new_msg(msg)


func new_msg(msg: String)->void:
	var new_msg_node:= message_loaded.instantiate()
	new_msg_node.setup(msg)
	%MessageVBox.add_child(new_msg_node)
	call_deferred("update_scroll")


func update_scroll()->void:
	%ScrollContainer.set_deferred("scroll_vertical",%ScrollContainer.get_v_scroll_bar().max_value)
