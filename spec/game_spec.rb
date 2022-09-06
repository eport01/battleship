require 'rspec'
require './lib/board'
require './lib/ship'
require './lib/cell'
require './lib/game'
require './lib/player'


RSpec.describe Game do
  it 'initializes' do
    user = Player.new('User')
    computer = Player.new('Computer')
    game = Game.new(computer, user)
    expect(game).to be_an_instance_of(Game)
  end
end
