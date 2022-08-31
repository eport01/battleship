class Cell
  attr_reader :coordinate, :empty, :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @empty = true
    @ship = nil
  end

  def empty?
    @empty
  end

  def place_ship(crusier)
    @ship = cruiser
  end

end
