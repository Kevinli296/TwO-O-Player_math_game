# Create a 2-Player math game where players take turns to answer simple math addition problems.
# A new math question is generated for each turn by picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives.
# player loses a life if question is answered wrong.
# At end of every turn, game should output new scores for both players.
# Game doesn’t end until one player loses all their lives.
# At this point, game should announce who won and what the other player’s score is.

# ex output:
# Player 1: What does 5 plus 3 equal?
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# Player 2: What does 2 plus 6 equal?
# > 8
# Player 2: YES! You are correct.
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# ... some time later ...
# Player 1 wins with a score of 1/3
# ----- GAME OVER -----
# Good bye!

# Task 1: Extract Nouns for Classes
# Classes: Player, Math Question

# Task 2: Write their roles
# Class: Player
# State: lives/score
# Behavior: losing_a_life/score, winning/losing_the_game

# Class: Math Question
# State: question_statement
# Behavior: ask_question, correct_answer, incorrect_answer