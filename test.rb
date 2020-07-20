class NewQuestion
  # create values for use in the questions:
  firstNum = rand(1..20) 
  secondNum = rand(1..20)
  correctAnswer = firstNum + secondNum
  # (PUTS) for answer responses
  puts "What is the value of #{firstNum} + #{secondNum}?"
  print "> "
 
  playerAnswer = $stdin.gets.chomp
    
  # answer checking logic
  if correctAnswer.to_i == playerAnswer.to_i
    puts "Congrats! You can add."
  else 
  # else put correct answer response
    puts "Did you seriously think that was right? It's #{correctAnswer}! Lives minus one!"
  end

end