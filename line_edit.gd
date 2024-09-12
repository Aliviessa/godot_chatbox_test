extends LineEdit

signal new_msg(msg: String)


 
func _on_text_submitted(new_text: String) -> void:
	new_msg.emit(new_text)
	text = ""
