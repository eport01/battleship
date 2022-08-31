class Cell
  attr_reader :coordinate, :empty, :ship, :fired_upon, :fire_upon
  def initialize(coordinate)
    @coordinate = coordinate
    @empty = true
    @ship = ship
    @fired_upon = false 
  end

  def empty?
    @empty 
    # if @ship != nil 
    #   false
    # else
    #   true 
    # end 
  end

  def place_ship(ship_type)
    @ship = ship_type  
    @empty = false 
  end

  def fired_upon?
    fired_upon
  end 

  def fire_upon
    if @ship.health != 0  
      @ship.hit 
      @fired_upon = true 
    end 
  end 

end
