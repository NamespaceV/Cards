class_name Action
extends Node

var action_name: String

static func create (action_name_: String) -> Action:
	var result = Action.new()
	result.action_name = action_name_
	return result

func is_available( current_state : GameState ) -> bool:
	return true

func _to_string() -> String:
	return action_name
