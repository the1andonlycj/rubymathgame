require "players"
require "game"
require "question"

# I'm pretty sure this isn't how this works, but..
# Placeholder value. When main.rb is run, it should ask if you want to start
# a new game.

# 

# Code for a new game: 
# initialize two players
p1 = Player.new($stdin.gets.chomp)
p2 = Player.new($stdin.gets.chomp)



# initialize game
g = Game.new(p1, p2)


while g.game_shall_continue?
  g.question
  g.validate_answer($stdin.gets.chomp)
end