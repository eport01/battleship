require 'rspec'
require './lib/ship.rb'

RSpec.describe Ship do

<<<<<<< HEAD
it 'initializes' do 
  
  cruiser = Ship.new("Cruiser", 3)

  expect(cruiser.name).to eq("Cruiser")
  expect(cruiser.length).to eq(3)
=======
  it 'initializes' do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.name).to eq("Cruiser")
    expect(cruiser.length).to eq(3)
>>>>>>> 0bf94637c872bed9799ce8f673be52d909cb3b87


  end

<<<<<<< HEAD
it 'ship can be sunk' do 

  cruiser = Ship.new("Cruiser", 3)
  expect(cruiser.health).to eq(3)
  expect(cruiser.sunk?).to eq(false)

  cruiser.hit
  # require 'pry'; binding.pry 
  expect(cruiser.health).to eq(2)
  cruiser.hit 
  expect(cruiser.health).to eq(1)
  expect(cruiser.sunk?).to eq(false)
  cruiser.hit
  expect(cruiser.sunk?).to eq(true)

end 
=======
  it 'ship can be sunk' do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.health).to eq(3)
    expect(cruiser.sunk?).to eq(false)
    cruiser.hit
    expect(cruiser.health).to eq(2)
    cruiser.hit
    expect(cruiser.health).to eq(1)
    expect(cruiser.sunk?).to eq(false)
    cruiser.hit
    expect(cruiser.sunk?).to eq(true)

  end
>>>>>>> 0bf94637c872bed9799ce8f673be52d909cb3b87




end
