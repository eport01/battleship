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
    cruiser = Ship.new("Cruiser", 3)

    cell.place_ship(cruiser)

    expect(cell.ship).to eq("Cruiser")

    expect(cell.empty?).to eq(false)

  end
end
