
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
    @game_board.place(@cruiser, @coord_array)
      # puts @coord_array 
  end 

  def random_placement_submarine 
    @sub_array = []
    until @game_board.valid_placement?(@submarine, @sub_array) == true 
      @sub_array = @game_board.cells.keys.sample(2)
    end 
    @game_board.place(@submarine, @sub_array)
      # puts @sub_array 
  end 

  def user_cruiser_placement
    puts "I have laid out my ships on the grid. \n " + 
    "You now need to lay out your two ships. \n " +
    "The Cruiser is three units long and the Submarine is two units long. \n" +
    "  1 2 3 4 \n" +
    "A . . . . \n" +
    "B . . . . \n" +
    "C . . . . \n" +
    "D . . . . \n" +
    "Enter the squares for the Cruiser (3 spaces):"
    check = false
    while check == false
      input = gets.chomp # A1 A2 A3
      input = input.split(/\W+/)
      check = @game_board.valid_placement?(@cruiser, input)
      if check == true
        @game_board.place(@cruiser, input)
        puts @game_board.render(true)
      else
        puts "Those are invalid coordinates. Please try again:"
      end
    end


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

 


 