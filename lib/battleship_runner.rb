require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'


game = Game.new
user = Player.new('User') 
computer = Player.new('Computer') 
cruiser = Ship.new("Cruiser", 3)
submarine = Ship.new("Submarine", 2)
# cruiser = Ship.new("Cruiser", 3)
# submarine = Ship.new("Submarine", 2)
#player may need some arguments
# require 'pry'; binding.pry 
game.start 