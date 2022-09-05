require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'

computer = Player.new('Computer')
user = Player.new('User')
game = Game.new(computer, user)
game.start
