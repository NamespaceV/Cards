# Godot project

developed for Krong Godota on Polygon

Game is base on an RPG system where players have a set of poke cards in hand designed by Mlody

Each suit represents a different aspect that defines the type of action e.g 

- Club - Dexterity - Steal, Sneak
- Heart - Strength - Fight, Subdue

Value determines how good character was in performing the action.

 - 2 - very poor job
 - Ace - superb performance

For each encounter player playes a single card. Suit determines action and difficulty for the task to succeed. A die is rolled, then action is success or failure based on

`card value + die roll > task difficulty`

Example

 - player encounters a guard
 - player plays 10 of Heart
 - Heart means player will fight the guard
 - difficuylty for fighting this particualr guard is 13
 - player rolls a 4
 - 10 + 4 > 13 fight succeeded
 - encounter action summary is shown
 - player advances to the next encounter

if player rolled a 2, it would ba a fialure and a different outcome would occur
