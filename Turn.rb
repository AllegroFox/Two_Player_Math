
class Turn

  def initialize(currentPlayer, currentQuestion)
    @player = currentPlayer
    @question = currentQuestion
  end

  def run
    @question.ask
    puts "#{@player.name}:"
    player_answer = gets.chomp

    if player_answer == @question.answer
      puts "Yes, that's right!"
      @player.add_point
      game.continue?

    elsif player_answer != @question.answer
      puts "Wrong answer!"
      @player.lose_life
      game.continue?

    else
      puts "error"
    end

  end
end