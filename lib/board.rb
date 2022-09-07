require './cell'

class Board

  attr_reader :cells,
              :first_consecutive,
              :valid_placement,
              :valid,
              :coord_array
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
  end

  def valid_coordinate?(coordinate)
    @cells.keys.include?(coordinate)
  end

  def valid_placement?(ship_object, coord_array)
    coord_letters = coord_array.map {|letter| letter.chr}
    coord_numbers = coord_array.map {|number| number[1].to_i}
    if coord_letters.uniq.size <= 1
      @valid = coord_numbers.each_cons(2).all? {|left, right| left + 1 == right}
    elsif coord_numbers.uniq.size <= 1
      @valid = coord_letters.each_cons(2).all? {|left, right| left.ord + 1 == right.ord}
    else
      @valid = false
    end
    if @valid == true && coord_array.length == ship_object.length && coord_empty?(coord_array) == true
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

  def render(show_ships = false)
      "  1 2 3 4 \n" +
      "A #{cells['A1'].render(show_ships)} #{cells['A2'].render(show_ships)} #{cells['A3'].render(show_ships)} #{cells['A4'].render(show_ships)} \n" +
      "B #{cells['B1'].render(show_ships)} #{cells['B2'].render(show_ships)} #{cells['B3'].render(show_ships)} #{cells['B4'].render(show_ships)} \n" +
      "C #{cells['C1'].render(show_ships)} #{cells['C2'].render(show_ships)} #{cells['C3'].render(show_ships)} #{cells['C4'].render(show_ships)} \n" +
      "D #{cells['D1'].render(show_ships)} #{cells['D2'].render(show_ships)} #{cells['D3'].render(show_ships)} #{cells['D4'].render(show_ships)} \n"
  end
end
