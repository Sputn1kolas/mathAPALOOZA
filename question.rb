class Question
  attr_reader :answer, :question
  def initialize
    @num1 = [*1..20].sample
    @num2 = [*1..20].sample
    @answer = @num1 + @num2
    @question = "What is #{@num1} + #{@num2} ?"
  end
end

