# Code for question creation and storage of answer:
class Question
  attr_reader :firstNum, :secondNum, :correctAnswer

  def initialize
    @firstNum = rand(1..20) 
    @secondNum = rand(1..20)
    @correctAnswer = firstNum + secondNum
  end
end

