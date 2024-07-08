class_name Encounter
extends Node

var scene_name : String = "scene not initialized"

var description : String = "description missing"

## suite -> Action
var suit_to_action : Dictionary


static func create_warehouse() -> Encounter:
	var result = Encounter.new()
	result.scene_name = "warehouse"
	result.description = "old warehouse in the middle of nowwhere"

	var action_search = Action.create("search")
	var action_sabotage = Action.create("sabotage")
	result.suit_to_action = {
		Card.SUIT_CLUBS: action_search,
		Card.SUIT_DIAMANDS: action_search,
		Card.SUIT_HEARTS: action_sabotage,
		Card.SUIT_SPADES: action_sabotage,
	}

	return result


func get_action_for_card(card: Card) -> Action:
	return suit_to_action[card.suit]


func render_for_state(_state : GameState):
	var result = scene_name + "\n-----\n\n" + description
	return result

## does not include state check
func _to_string():
	var result = scene_name + "\n" + description + "\n"
	for suit in suit_to_action:
		var a = suit_to_action[suit]
		result += suit + " -> " + a.action_name + "\n"
	return result
