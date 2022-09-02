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
  end 
 

  def valid_coordinate?(coordinate)
    @cells.keys.include?(coordinate) 
  end 

  def valid_placement?(ship_object, coord_array)
    coord_array.length == ship_object.length 
    if @consecutive_cells == true 
      true 
    else
      false 
    end 
  end 

  def all_valid_coords?(coord_array)
    coord_array.all? {|coord| self.valid_coordinate?(coord)} 

  end 
  def consecutive_letter?(coord1, coord2)
    coord1[0].ord == coord2[0].ord + 1 
  end 
  def consecutive_number?(coord1, coord2)
    coord1[1].ord == coord2[1].ord + 1 
  end 
 
  def consecutive_cells?(coord1, coord2)
    coord1 = coord_array[0]
    coord2 = coord_array[1]
    if coord1[0] == coord2[0] && consecutive_number?(coord1, coord2)
      true 
    elsif coord1[1] == coord2[1] && consecutive_letter?(coord1, coord2)
      true 
    else
      false
    end 
  end 

  def all_consecutive_cells?(coordinate_array)
    #arrays of pairs, instead of looking at 1 element, it looks at a smaller array of whatever size you specify
    coordinate_array.each_cons(2) {|coord_pair| consecutive_cells?(coord_pair)}
  end 



end 








def cons_numbers 
end 











  # def first_consecutive  
  #   cons_nums2 = coord_array[0].byteslice(-1).to_i + 1 == coord_array[1].byteslice(-1).to_i || coord_array[1].byteslice(-1).to_i + 1 == coord_array[2].byteslice(-1).to_i
  #   # cons_nums3 = coord_array[1].byteslice(-1).to_i + 1 == coord_array[2].byteslice(-1).to_i
  #   cons_lets = coord_array[0].chr == coord_array[1].chr || coord_array[1].chr == coord_array[2].chr
  #   coord_ship_length = coord_array.length == ship_object.length 
  #   if cons_nums2 == true && cons_lets == true && coord_ship_length == true 
  #     @valid_placement = true 
  #   # elsif @ship_object == cruiser && cons_nums3 == true && cons_lets == true && coord_ship_length == true 
  #   #   @valid_placement = true 
  #   else
  #     @valid_placement = false 
  #   end 


    # if coord_array[0].byteslice(-1).to_i + 1 == coord_array[1].byteslice(-1).to_i
    #   @valid_placement = true 
    # elsif coord_array[0].chr == coord_array[1].chr || coord_array[1].chr == coord_array[2].chr
    #   @valid_placement = true 
    # else
    #   @valid_placement = false 
    # end 
    

 


# coord_array[0]
#cells.keys is array of just the keys 
#if letters are the same and the difference 