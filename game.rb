class Game
  newGame 
  # initialize game with two players, each having three lives:

  # using .chomp:
  

  # selecting player logic
  def question
    firstNum = rand(1..20) 
    secondNum = rand(1..20)
    correctAnswer = firstNum + secondNum
    
    puts "What is the value of #{firstNum} + #{secondNum}?"
    print "> "
    # player has seen question, inputs answer on this line
    playerAnswer = $stdin.gets.chomp
    
    # answer checking logic and responses:
    if correctAnswer.to_i == playerAnswer.to_i
      puts "Congrats! You can add."
    else 
      
      # INSERT CODE FOR TAKING OFF A LIFE
      puts "Did you seriously think that was right?" 
      puts "It's #{correctAnswer}! Lives minus one!"
    end
    #Check for game over???
    # INSERT CODE FOR CHANGING SELECTED PLAYER
  end
  # endgame logic

  
end
  
#Logic for question creation and answer checking: