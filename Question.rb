class Question

  def initialize
    @firstNumber = rand(1...20)
    @secondNumber = rand(1...20)
    @answer = @firstNumber + @secondNumber
  end

  def show_question
    "What does #{@firstNumber} plus #{@secondNumber} equal?"
  end

  def correct_answer?(guess)
    @answer == guess
  end

end

# test code

# q1 = Question.new
# q2 = Question.new

# puts q1.show_question
# puts q2.show_question
