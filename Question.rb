class Question
  attr_accessor :num1, :num2, :answer
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @answer = num1 + num2
  end
  def generate_question
    puts "What does #{num1} plus #{num2} equal?"
  end
  def check_answer?(player_answer)
    player_answer == answer
  end
end






