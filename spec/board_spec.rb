require 'rspec'
require './lib/board'


RSpec.describe Board do 

  it 'initializes' do 
    board = Board.new
    # require 'pry';binding.pry 
  end

  it 'has cells' do 
    board = Board.new
  # require 'pry'; binding.pry 
    expect(board.cells.count).to eq(16)

  end 

  it 'tests that a coordinate is valid' do 
    board = Board.new

    expect(board.valid_coordinate?("A1")).to eq(true)

  end 


end 
