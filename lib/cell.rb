class Cell
  attr_reader :coordinate, :empty, :ship, :fired_upon
  def initialize(coordinate)
    @coordinate = coordinate
    @empty = true
    @ship = nil
    @fired_upon = false
  end

  def empty?
    @empty
  end

  def place_ship(ship_object)
    @ship = ship_object
    @empty = false
  end

  def fired_upon?
      @fired_upon
    end

  def fire_upon
    @fired_upon = true
    if @empty == false
      @ship.hit
    end
  end

  def render(default = false)
    if default == true
      'S'
    elsif @fired_upon == false
      '.'
    elsif @empty == true && @fired_upon == true
      'M'
    elsif @empty == false && @fired_upon == true
      if @ship.health > 0
        'H'
      else
        'X'
      end
    end
  end
end
