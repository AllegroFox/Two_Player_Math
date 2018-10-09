
class Question
  attr_accessor :answer

  def initialize(a, b)
    @VarA = rand(a..b)
    @VarB = rand(a..b)
    @answer = (@VarA + @VarB).to_s
  end

  def ask
    puts "What is #{@VarA} + #{@VarB}?"
  end

end