extends HBoxContainer


func setup(msg: String)->void:
	%Msg.text = msg
	%Timestamp.text = str("[",Time.get_time_string_from_system(),"]: ")
