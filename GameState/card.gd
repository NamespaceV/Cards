class_name Card
extends Node

const SUIT_HEARTS   = "♥ hearts"
const SUIT_DIAMANDS = "♦ diamands"
const SUIT_SPADES   = "♠ spades"
const SUIT_CLUBS    = "♣ clubs"

const VALUE_JACK = 11
const VALUE_QUEEN = 12
const VALUE_KING = 13
const VALUE_ACE = 14

var suit : String = SUIT_SPADES
var value : int = VALUE_ACE


func _init( value_ : int, suit_ : String):
	value = value_
	suit = suit_
	assert( value >= 2, "min value is 2")
	assert( value <= VALUE_ACE, "max value is ACE (14)")

func _to_string():
	return val_as_str() + " " + suit

func val_as_str() -> String:
	match value:
		VALUE_ACE: return "A"
		VALUE_KING: return "K"
		VALUE_QUEEN: return "Q"
		VALUE_JACK: return "J"
		_ : return str(value)
