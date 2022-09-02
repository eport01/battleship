require './lib/cell'

class Board
  attr_reader

  def initialize
    @cell = {
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
      "D4" => Cell.new("D4"),
    }
  end

  def valid_coordinate?(coordinate)
    @cells.keys.include?(coordinate)
  end

  def all_valid_coordinates?(coordinate_array)
    coordinate_array.all?{|coordinate| self.valid_coordinate?(coordinate)}
  end

  def consecutive_letter?(coordinate_1, coordinate_2)
    coordinate_1[0].ord == coordinate_2[0].ord +1
  end

  def consecutive_number?(coordinate_1, coordinate_2)
    coordinate_1[1].ord == coordinate_2[1].ord +1
  end

  def consecutive_cells?(coordinate_pair)
    coordinate_1 = coordinate_pair[0]
    coordinate_2 = coordinate_pair[1]
    if coordinate_1[0] == coordinate_2[0] && consecutive_number?(coordinate_1, coordinate_2)
      true
    elsif coordinate_1[1] == coordinate_2[1] && consecutive_letter?(coordinate_1, coordinate_2)
      true
    else
      false
    end
  end

  def all_consective_cells?(coordinate_array)
    coordinate_array.each_cons(2){|coordinate| consecutive_cells?(coordinate)}
  end


  def ship_present?(coordinate_array)

  end


  def valid_placement?(ship_type, coordinate_array)
    coordinate_array.length == ship_type.length
    if @consecutive_cells == true
      true 
    else
      false
    end
  end
end

















# attr_reader :size, :cells
#
# def initialize(size)
#   @size = size.to_i
#   @letters_array = ("A".."Z").to_a
#   @cells = create_cells
# end
#
# def create_cells
#   hash = {}
#
#   @letters_array.first(@size).each do |letter|
#     @cell_counter = 0
#     @size.times do
#       @cell_counter += 1
#       if hash[letter + "#{@cell_counter}"].nil?
#         hash[letter + "#{@cell_counter}"] = Cell.new(letter + "#{@cell_counter}")
#       end
#     end
#   end
#   hash
