#PLAN
# class Question
# Role: Generate and validate the math questions for each player's turn.
# State/Attributes:
#   - num1 and num2 - two random numbers between 1 and 20 for the question
#   - answer - The correct answer to the question
# Behavior/Method:
#   - def validate_answer - validates players answer if numeric.
#   - def create_question - Generates the question with two random numbers
#   - def check_answer - Compares player's input (answer) to the correct answer and returns if its correct or not.
# This class will simply generate and validate questions


class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def create_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def validate_answer?(player_answer) #Boolean
    player_answer.match?(/^[-]?\d+$/) #True or False
  end

  def check_answer(player_answer)
    player_answer.to_i == @answer
  end

end
