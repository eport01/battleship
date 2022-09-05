class Game 
  attr_reader :user, :computer, :turn 
  def initialize(computer, user)
    @computer = computer
    @user = user

  end 
  def start
   puts "Welcome to BATTLESHIP \n" +
    "Enter p to play. Enter q to quit."
    input = gets.chomp 

    if input.downcase == 'p' 
      @computer.random_placement_cruiser
      @computer.random_placement_submarine
      @user.user_cruiser_placement
      turn 
      #@user.user_submarine_placement NEED TO MAKE
      # while nobody has won
      
      #   @turn
      # end
    elsif input.downcase == 'q' 
      puts "You chose to quit the game, bye bye"
    else
      puts "Entry invalid. Please enter 'p' for play or 'q' for quit."
    end  
  end 


  def turn
    puts "====COMPUTER BOARD==== "
    puts @computer.game_board.render
    puts "====PLAYER BOARD===="
    puts @user.game_board.render(true)


  end

 
  # user.game_board.render 


  


end 

# game = Game.new
# puts game.start 