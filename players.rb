class Player 
  attr_accessor
    :name
    :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

end

joe = Player.new("joe", 7)
puts "Look, it's Joe: #{player}"

# player instance
  # initialize with P1 and P2
    # and 3 lives
  
  # tracks right answers 
  # tracks SELECTED for when it's their turn
# end

