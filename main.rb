require "players"
require "game"

# math game, turns, simple addition problems (always adding),
# new question is generated for each turn by picking two numbers
# between 1 and 20. players take turns, the player whose turn it is
# will answer the question, if it's wrong, they lose a life, otherwise,
# the game continues without changing. once someone has lost all lives,
# a winner is declared. 

# 2 players


# start with 3 lives each
# Lose life if missed question
# end of turn, game shows "SCORES" (lives?) for both players
# game ends when one player loses all lives
# game announces winner and other player's score.




# Players will store the logic related to themselves, especially lives,
# which will be referenced by the Game object.
# The "game" class will have the logic for questions, displaying them,
# and keeping track of how many lives are remaining. The players are useless
# by themselves, because only in comparing them will their data become relevant
# to the game, and we would want to create new players each time a game is started
# to avoid carryover of lives and score (what if you finish a game with 1 life left
# and then start a new game with someone else but you still only have that one life?)
