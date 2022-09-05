require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'


# game = Game.new
# user = Player.new('User') 
# computer = Player.new('Computer') 
# cruiser = Ship.new("Cruiser", 3)
# submarine = Ship.new("Submarine", 2)

# #player may need some arguments
# # require 'pry'; binding.pry 
# game.start 
# game.computer_setup


################
# cruiser = Ship.new("Cruiser", 3)
# submarine = Ship.new("Submarine", 2)
computer = Player.new('Computer')
user = Player.new('User')
game = Game.new(computer, user)
# require 'pry'; binding.pry
game.start
#puts game.computer.game_board.render(true) THIS OUTPUTS THE RIGHT THING
