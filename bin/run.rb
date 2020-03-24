# Welcome message
# Prompt user for rounds
# Calls seeds.rb
# Runs round
# Prints results (?)
# Cyphr object lives here (?)
require_relative '../config/environment'
require_relative '../db/seeds'

CYPHR = Cyphr.new
clear

puts " "
puts "Welcome to"

banner = Artii::Base.new :font => 'slant'
puts banner.asciify('Tagger')
puts " "
puts "Please enter the number of taggers: "
taggers = Integer(gets) rescue false
while !taggers
    puts "An integer, please"
    taggers = Integer(gets) rescue false
end
make_taggers(taggers)
puts "Please enter the number of cops:"
cops = Integer(gets) rescue false
while !cops
    puts "An integer, please"
    cops = Integer(gets) rescue false
end
make_cops(cops)
# names = RestClient.get("https://uinames.com/api/?amount=#{num}")
# hash = JSON.parse(names)
# msg = RestClient.get('https://icanhazdadjoke.com/', {accept: :text})
# cyphr = Cyphr.new

binding.pry
0
