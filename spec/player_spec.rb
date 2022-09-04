require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'

RSpec.describe Player do 

  it 'checks that a player is an instance of player class' do 
    # require 'pry'; binding.pry 
    user = Player.new('User')
    expect(user).to be_an_instance_of(Player)
  end 


  it 'the computers ship placement is randomized' do 
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    user = Player.new('User')
    computer = Player.new('Computer')
    # s_coord_array = board.cells.keys.sample(2)
# require 'pry';binding.pry  
    board.render 
    expect(user.random_placement_cruiser).to eq(@coord_array)
    expect(user.random_placement_submarine).to eq(@sub_array)

  end 





# user.game_board.cells 

end 