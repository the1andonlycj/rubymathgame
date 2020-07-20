class Game
  def initialize
    @players = [
      Player.new("Math Monkey 1"),
      Player.new("Math Monkey 2")]
    @gameOver = false
    @currentPlayer = @players[0]
  end
  
  def gameOn
    while (not @gameOver) do 
      puts "Monkey1: #{@players[0].lives} lives remain || Monkey2: #{@players[1].lives} lives remain "
      puts "============= New Turn ============="
      question = Question.new

      puts "#{@currentPlayer.name}: What is #{question.firstNum} plus #{question.secondNum}?"
      playerAnswer = gets.chomp.to_i
      if playerAnswer == question.correctAnswer
        puts "Congrats! You can add."
      else
        @currentPlayer.questionFail
        self.check_gameOver
        puts "Did you seriously think that was right?" 
        puts "It's #{question.correctAnswer}! You're down to #{@currentPlayer.lives}"
      end

      if @currentPlayer == @players[0]
        @currentPlayer = @players[1]
      else
        @currentPlayer = @players[0]
      end
    end
    # the above code will run in a loop until this is triggered
    # by someone running out of lives:
    puts "============= Game Over ============="
    puts "Wow. #{@currentPlayer.name} wins! Amazing."
  end
  
  # After each failed answer attempt, we check to see if it's
  # time to end the game:
  def check_gameOver
    if @currentPlayer.lives == 0
      @gameOver = true
    end
  end
end
