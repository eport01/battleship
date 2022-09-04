require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'


game = Game.new
user = Player.new('User', user_board = Board.new) 
computer = Player.new('Computer', computer_board = Board.new) 
#player may need some arguments
# require 'pry'; binding.pry 
game.start 