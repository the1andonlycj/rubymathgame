# This file instantiates a player when called:
class Player 
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def questionFail
    @lives -= 1
  end
end