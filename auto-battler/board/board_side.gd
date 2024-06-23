@tool
extends VBoxContainer


@export_enum("UP", "DOWN") var side: String:
	set(value):
		match value:
			"UP":
				move_child(%Health, 0)
				alignment = ALIGNMENT_BEGIN
			"DOWN":
				move_child(%Health, get_child_count() - 1)
				alignment = ALIGNMENT_END
		side = value
