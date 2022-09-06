require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'

RSpec.describe Player do

  it 'checks that a player is an instance of player class' do
    user = Player.new('User')
    expect(user).to be_an_instance_of(Player)
  end


  it 'the computer or player can lose' do
    board = Board.new
    user = Player.new('User')
    # computer = Player.new('Computer')

    board.render
    expect(user.has_lost).to eq(false)
    # require "pry"; binding.pry
    user.game_board.place(user.cruiser, ['A1', 'A2', 'A3'])
    user.game_board.place(user.submarine, ['B1', 'B2'])
    # computer.game_board.valid_placement?(cruiser,["A1", "A2", "A3"])
    user.submarine.hit
    user.submarine.hit
    user.cruiser.hit
    user.cruiser.hit
    user.cruiser.hit

# require "pry"; binding.pry
    expect(user.has_lost).to eq(true)

  end
end
