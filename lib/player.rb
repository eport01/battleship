
class Player
  attr_reader :type, :game_board, :has_lost, :reset_ship, :cruiser_random, :submarine_random, :random_placement_cruiser, :random_placement_submarine, :cruiser, :submarine

  def initialize(type)
    @type = type
    @game_board = Board.new
    @cruiser_random = cruiser_random
    @cruiser = Ship.new("Cruiser", 3)
    @submarine = Ship.new("Submarine", 2)
  end

  def reset_ship
    @cruiser.reset
    @submarine.reset
  end

  def has_lost
    # require "pry"; binding.pry
    if @submarine.health == 0 && @cruiser.health == 0
      true
    else
      false
    end
  end

  def random_placement_cruiser
    @coord_array = []
    until @game_board.valid_placement?(@cruiser, @coord_array) == true
      @coord_array = @game_board.cells.keys.sample(3)
    end
    @game_board.place(@cruiser, @coord_array)
  end

  def random_placement_submarine
    @sub_array = []
    until @game_board.valid_placement?(@submarine, @sub_array) == true
      @sub_array = @game_board.cells.keys.sample(2)
    end
    @game_board.place(@submarine, @sub_array)
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
      input = gets.chomp
      input = input.split(/\W+/)
      check = @game_board.valid_placement?(@cruiser, input)
      if check == true
        @game_board.place(@cruiser, input)
      else
        puts "Those are invalid coordinates. Please try again:"
      end
    end

    def user_submarine_placement
      puts @game_board.render(true)
      puts "Enter the squares for the Submarine (2 spaces):"
      check = false
      while check == false
        input = gets.chomp
        input = input.split(/\W+/)
        check = @game_board.valid_placement?(@submarine, input)
        if check == true
          @game_board.place(@submarine, input)
          puts @game_board.render(true)
        else
          puts "Those are invalid coordinates. Please try again:"
        end
      end
    end
  end
end
