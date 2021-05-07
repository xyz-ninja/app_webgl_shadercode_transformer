extends Node2D

onready var vshader_source_textedit = get_node("panel/vshader_source_textedit")
onready var fshader_source_textedit = get_node("panel/fshader_source_textedit")
onready var vshader_converted_textedit = get_node("panel/vshader_converted")
onready var fshader_converted_textedit = get_node("panel/fshader_converted")

func _ready():
	pass

func _on_Button_pressed():
	var vshader_converted_text = ""
	var fshader_converted_text = ""
	# VSHADER
	vshader_converted_text += "var VSHADER_SOURCE = \n"
	for line_i in range(vshader_source_textedit.get_line_count()):
		if line_i == vshader_source_textedit.get_line_count() - 1:
			vshader_converted_text += "'" + vshader_source_textedit.get_line(line_i) + "\\n';"
		else:
			vshader_converted_text += "'" + vshader_source_textedit.get_line(line_i) + "\\n' + \n"
	# FSHADER
	fshader_converted_text += "var FSHADER_SOURCE = \n"
	for line_i in range(fshader_source_textedit.get_line_count()):
		if line_i == fshader_source_textedit.get_line_count() - 1:
			fshader_converted_text += "'" + fshader_source_textedit.get_line(line_i) + "\\n';"
		else:
			fshader_converted_text += "'" + fshader_source_textedit.get_line(line_i) + "\\n' + \n"
	
	vshader_converted_textedit.set_text(vshader_converted_text)
	fshader_converted_textedit.set_text(fshader_converted_text)
	
