require 'rspec'
require './lib/ship'
require './lib/cell'

RSpec.describe Cell do
  it 'initialize' do
    cell = Cell.new('B4')
    expect(cell.coordinate).to eq('B4')
    expect(cell.ship).to eq(nil)
    expect(cell.empty?).to eq(true)
  end

  it 'places ship on board' do
    cell =Cell.new('B4')

  end
end
