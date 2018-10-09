
class Player
  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def lose_life
    @lives -= 1
  end

  def add_point
    @score += 1
  end

  def info
    "#{name} has #{lives} lives and #{score} points."
  end

end