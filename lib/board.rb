require './lib/cell'
require './lib/ship'

class Board
  attr_reader :cells, :first_consecutive, :valid_placement
  def initialize
    @cells = {
      "A1" => Cell.new("A1"),
      "A2" => Cell.new("A2"),
      "A3" => Cell.new("A3"),
      "A4" => Cell.new("A4"),
      "B1" => Cell.new("B1"),
      "B2" => Cell.new("B2"),
      "B3" => Cell.new("B3"),
      "B4" => Cell.new("B4"),
      "C1" => Cell.new("C1"),
      "C2" => Cell.new("C2"),
      "C3" => Cell.new("C3"),
      "C4" => Cell.new("C4"),
      "D1" => Cell.new("D1"),
      "D2" => Cell.new("D2"),
      "D3" => Cell.new("D3"),
      "D4" => Cell.new("D4")}
    # @cells = cells
  end

  # def cell_pairs
  #   @cells.each_cons(2) {|key, value| p (key, value)}
  # end

  def valid_coordinate?(coordinate)
    @cells.keys.include?(coordinate)
  end

  def valid_placement?(ship_object, coord_array)
    coord_letters = coord_array.map {|letter| letter.chr}
    coord_numbers = coord_array.map {|number| number[1].to_i}

    if coord_letters.uniq.size <= 1
      valid = coord_numbers.each_cons(2).all? {|left, right| left + 1 == right}
    elsif coord_numbers.uniq.size <= 1
      valid = coord_letters.each_cons(2).all? {|left, right| left.ord + 1 == right.ord}
    else
      valid = false
    end

    if valid == true && coord_array.length == ship_object.length && coord_empty?(coord_array) == true
      true
    else
      false
    end
  end

  def place(ship_object, coord_array)
    if valid_placement?(ship_object, coord_array) == true
      coord_array.map do |coord|
        @cells[coord].place_ship(ship_object)
      end
    else
      "Placement not valid, please try again."
    end
  end

  def coord_empty?(coord_array)
    coord_array.all? {|coord| @cells[coord].empty == true}
  end

  def render(rendered = false)
    
  end
end

  # def all_valid_coords?(coord_array)
  #   @coord_array.all? {|coord| self.valid_coordinate?(coord)}

  # end


  # def consecutive_number?(coord1, coord2)
  #   @coord1[1].ord +1 == @coord2[1].ord
  # end

  # def consecutive_letter?(coord1, coord2)
  #   @coord1[0].ord +1 == @coord2[0].ord
  # end

  # def consecutive_cells?(coord_array)
  #   @coord1 = @coord_array[0]
  #   @coord2 = @coord_array[1]
  #   if @coord1[0] == @coord2[0] && consecutive_number?(coord1, coord2)
  #     true
  #   elsif @coord1[1] == @coord2[1] && consecutive_letter?(coord1, coord2)
  #     true
  #   else
  #     false
  #   end
  # end

  # def all_consecutive_cells?(coord_array)
  #   #arrays of pairs, instead of looking at 1 element, it looks at a smaller array of whatever size you specify
  #   coord_array.each_cons(2) {|coord_pair| consecutive_cells?(coord_pair)}
  #   # cells.each_cons(2) {|coord_pair| consecutive_cells?(coord_pair)}
  # end


#could also use each.cons(2) for the cells array and check that the keys are consecutive vertical and horizontal
