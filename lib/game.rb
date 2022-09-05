class Game 
  attr_reader :user, :computer
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
    elsif input.downcase == 'q' 
      puts "You chose to quit the game, bye bye"
    else
      puts "Entry invalid. Please enter 'p' for play or 'q' for quit."
    end  
  end 



 
  # user.game_board.render 


  


end 

# game = Game.new
# puts game.start 