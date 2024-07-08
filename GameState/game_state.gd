class_name GameState
extends Node

@onready var buttons : Array[Button]= [
	$ActionButtons/Button,
	$ActionButtons/Button2,
	$ActionButtons/Button3,
	$ActionButtons/Button4,
	$ActionButtons/Button5,
]

@onready var description : TextEdit = $Description

var current_scene : Encounter = Encounter.create_warehouse()

var hand : Array[Card] = [
	Card.new(5, Card.SUIT_CLUBS),
	Card.new(5, Card.SUIT_HEARTS),
	Card.new(10, Card.SUIT_CLUBS),
	Card.new(Card.VALUE_ACE, Card.SUIT_CLUBS),
]

func _ready():
	for i in buttons.size():
		buttons[i].pressed.connect(card_clicked.bind(i))
		if i >= hand.size():
			buttons[i].text = "---"
			buttons[i].disabled = true
			continue
		var action := current_scene.get_action_for_card(hand[i])
		buttons[i].text = str(hand[i]) + "\n" + str(action)
		buttons[i].disabled = false
	description.text = current_scene.render_for_state(self)

func card_clicked(i : int):
	print("clicked %s - %s" % [ i, hand[i] ])

func has_suit(suit_needed : String) -> bool:
	for card in hand:
		if card.suite == suit_needed:
			return true
	return false
