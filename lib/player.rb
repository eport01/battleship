
class Player 
  attr_reader :type, :game_board, :cruiser_random, :submarine_random, :random_placement_cruiser, :random_placement_submarine  
  def initialize(type)
    @type = type 
    @game_board = Board.new
    @cruiser_random = cruiser_random
    @cruiser = Ship.new("Cruiser", 3)
    @submarine = Ship.new("Submarine", 2)
   

  end 

#  def computer_placement
#   @board.render
#   @random_placement_cruiser
#   @random_placement_submarine

#  end
# def placement
#   if @type == 'User'



#   else 

# end 

  

  def random_placement_cruiser
    @coord_array = []
    until @game_board.valid_placement?(@cruiser, @coord_array) == true 
      @coord_array = @game_board.cells.keys.sample(3)
    end 
      puts @coord_array 
  end 

  def random_placement_submarine 
    @sub_array = []
    until @game_board.valid_placement?(@submarine, @sub_array) == true 
      @sub_array = @game_board.cells.keys.sample(2)
    end 
      puts @sub_array 
  end 
end






    #we want this in board class i think?
    # cruiser = Ship.new("Cruiser", 3)
    # submarine = Ship.new("Submarine", 2)
    # cells.keys.sample(4)
    # if board.valid_placement?(ship_object, coord_array) == true 
    # computer places a cruiser ship w/ 3 coordinates that are valid and random
    #computer places a submarine ship 2/ do coordinates that are valid and random 
    



    
    # @board.valid_placement?("Cruiser", board.cells.sample)
    # user.game_board.cells.keys.sample(4)
    # user.game_board.valid_placement("Cruiser", board.cells.keys.sample(3))
    # user.game_board.valid_placement?("Cruiser", user.game_board.cells.keys.sample(3))

 


 