class Question
  attr_accessor :first_num, :second_num, :sum

  # Initialize random math question
  def initialize()
    self.first_num = rand(1..20)
    self.second_num = rand(1..20)
    self.sum = self.first_num + self.second_num
  end

  # Asks the random math question
  def question()
    puts "What does #{first_num} PLUS #{second_num} equal?\n"
  end

  # Checks the answer for that question
  def answer(result)
    if result == sum
      true
    else
      false
    end
  end

end