require 'rspec'
require './lib/ship'
require './lib/cell'

RSpec.describe Cell do
  it 'initialize' do
    cell = Cell.new('B4')
    expect(cell.coordinate).to eq('B4')
    expect(cell.ship).to eq(nil)
    # require 'pry'; binding.pry
    expect(cell.empty?).to eq(true)
  end

  it 'places ship on board' do
    cell =Cell.new('B4')
    cruiser = Ship.new("Cruiser", 3)

    cell.place_ship(cruiser)

    expect(cell.ship).to eq(cruiser)

    expect(cell.empty?).to eq(false)

  end

  it 'ship knows when its been fired upon' do
    cell =Cell.new('B4')
    cruiser = Ship.new("Cruiser", 3)


    cell.place_ship(cruiser)

    expect(cell.fired_upon?).to eq(false)
    # require 'pry'; binding.pry
    cell.fire_upon

    expect(cell.ship.health).to eq(2)

    expect(cell.fired_upon?).to eq(true)
  end

    it 'can be rendered' do
        cell_1 =Cell.new('B4')
        expect(cell_1.render).to eq('.')
    end
end
