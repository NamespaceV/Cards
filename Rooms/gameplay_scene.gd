class_name GameplayScene
extends Node

var scene_name : String = "warehouse"

var description : String = "old warehouse in the middle of nowwhere"

var action_search = Action.create("search")
var action_sabotage = Action.create("sabotage")

## suite -> Action
var suit_to_action : Dictionary = {
	Card.SUIT_CLUBS: action_search,
	Card.SUIT_DIAMANDS: action_search,
	Card.SUIT_HEARTS: action_sabotage,
	Card.SUIT_SPADES: action_sabotage,
}


func get_action_for_card(card: Card) -> Action:
	return suit_to_action[card.suit]


func render_for_state(_state : MainState):
	var result = scene_name + "\n-----\n\n" + description
	return result

## does not include state check
func _to_string():
	var result = scene_name + "\n" + description + "\n"
	for suit in suit_to_action:
		var a = suit_to_action[suit]
		result += suit + " -> " + a.action_name + "\n"
	return result
