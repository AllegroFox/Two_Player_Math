require "./Player.rb"
require "./Game.rb"
require "./Question.rb"

p1 = Player.new("Sparky")
puts p1.info

p2 = Player.new("Bob")
puts p2.info


game = Game.new([p1, p2])
q1 = Question.new(0, 20)

puts "It's the first turn."
puts "#{p1.name}: #{q1.ask}"

player_answer = gets.chomp

if player_answer == q1.answer
  puts "Yes, that's right!"
  p1.add_point
  puts p1.info
  puts p2.info
  game.continue?

elsif player_answer != q1.answer
  puts "Wrong answer!"
  p1.lose_life
  puts p1.info
  puts p2.info
  game.continue?

else
  puts "error"
end
