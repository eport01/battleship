require 'rspec'
require './lib/board'
require './lib/ship'
require './lib/cell'
require './lib/game'


RSpec.describe Game do 
  it 'initializes' do 
    game = Game.new
    expect(game).to be_an_instance_of(Game)

  end 

  it 'prints welcome message' do 
    game = Game.new
    expect(game).to eq("Welcome to BATTLESHIP
      Enter p to play. Enter q to quit.")

  end 


end 