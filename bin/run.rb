# Welcome message
# Prompt user for rounds
# Calls seeds.rb
# Runs round
# Prints results (?)
# Cyphr object lives here (?)
require_relative '../config/environment'

CYPHR = Cyphr.new

puts " "
puts "Welcome to"

banner = Artii::Base.new :font => 'slant'
puts banner.asciify('Tagger')
puts " "
puts "Please enter your username:"
user = gets.chomp
player1 = User.find_or_create_by(username: user)
puts " "
puts "Hello #{user}, will you be playing as:"
# TODO INPUT VALIDATION
puts "1) Tagger"
puts "2) Cop"
role = gets.chomp
# TODO CREATE TAGGER OR COP OBJECT WITH USERNAME
# TODO INITIALIZE GAME WITH ROLE COMING FROM TAGGER/COP OBJECT
# TODO CREATE OPPONENT, PULL NAME FROM API
game = Game.create(username: player1.username, role: role, points: 0, user_id: player1.id)
game.play

binding.pry
0
