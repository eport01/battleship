class Cell
  attr_reader :coordinate, :empty, :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @empty = true
    @ship = nil
  end

  def empty?
    if @ship != nil 
      false
    end 
  end

  def place_ship(ship_type)
    @ship = ship_type.name  
  end

end
