class Cell
  attr_reader :coordinate, :empty, :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @empty = true
    @ship = nil
    @fired_upon =false
  end

  def empty?
    @empty
    # if @ship != nil
    #   false
    # else
    #   true
    # end
  end

  def place_ship(ship_object)
    @ship = ship_object
    @empty = false
  end

  def fired_upon?
      @fired_upon
    end

  def fire_upon
    if @ship.health != 0
      @ship.hit
      @fired_upon = true
    end
  end

  def render
    if @fired_upon == false
      '.'
    end
  end

  
end
