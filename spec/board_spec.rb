require 'rspec'
require './lib/ship'
require './lib/cell'
require './lib/board'

RSpec.describe Board do
  before(:each) do
     @board = Board.new(4)
     @cruiser = Ship.new("Cruiser", 3)
     @submarine = Ship.new("Submarine", 2) 
  end
  it 'exists' do
     expect(@board).to be_an_instance_of Board
  end

  it 'the cell attribute have 16 key/value pairs' do

    expect(@board.cell.length).to eq(16)
  end

  descibe '#valid_coordinate' do
    it 'returns true or false if is a valid coordinate' do
      expect(@board.valid_coordinate?("A1")).to eq(true)
      expect(@board.valid_coordinate?("D4")).to eq(true)
      expect(@board.valid_coordinate?("A5")).to eq(false)
      expect(@board.valid_coordinate?("E1")).to eq(false)
      expect(@board.valid_coordinate?("A22")).to eq(false)
    end
  end
end
