require "./helpers.rb"
require "./Player.rb"
require "./Question.rb"
require "./Turn.rb"

class Game
  attr_accessor :id, :currentPlayer, :turns

  def initialize(players)
    @currentPlayer = players.at(1)
    @players = players
    @turns = 2
  end

  def new_turn
    currentPlayer = @currentPlayer
    currentQuestion = Question.new(0, 20)
    new_turn = Turn.new(currentPlayer, currentQuestion)
    @turns += 1
    new_turn.run
  end

  def continue?
    while @players[0].lives > 0 && @players[1].lives > 0 do
      puts info
      new_turn
    end
  end

  def info
    "It's turn #{turns}"
  end

end