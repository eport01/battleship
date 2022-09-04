require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'


game = Game.new
user = Player.new('User') 
computer = Player.new('Computer') 
#player may need some arguments
# require 'pry'; binding.pry 
game.start 