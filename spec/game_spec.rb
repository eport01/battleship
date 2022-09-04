require 'rspec'
require './lib/board'
require './lib/ship'
require './lib/cell'
require './lib/game'


RSpec.describe Game do 
  it 'initializes' do 
    game = Game.new(start)
    # expect(game(start)).to be_an_instance_of(Game)
    # require 'pry'; binding.pry 
  end 

  # it 'start' do 
  #   game = Game.new
  #   expect(game(start)).to eq(
  #     "Welcome to BATTLESHIP \n" +
  #     "Enter p to play. Enter q to quit."
  #   )
  # end 

  # it 'user chooses to play or quit' do 
  #   game = Game.new(start)
  # end 

end 