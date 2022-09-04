class Game 
  attr_reader :user, :computer 
  attr_accessor :start 
  def initialize
    # @user = user 
    # @computer = computer 



  end 
  def start
   puts "Welcome to BATTLESHIP \n" +
    "Enter p to play. Enter q to quit."
    input = gets.chomp 

    if input.downcase == 'p' 
      #play game 
    elsif input.downcase == 'q' 
      puts "You chose to quit the game, bye bye"
    else
      puts "Entry invalid. Please enter 'p' for play or 'q' for quit."
    end  
  end 
 

  def game_setup 


  end 
end 

game = Game.new
puts game.start 