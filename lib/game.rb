class Game 
  attr_reader :user, :computer, :turn, :user_shot, :computer_shot, :results 
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
      @user.user_submarine_placement 
      turn 

    elsif input.downcase == 'q' 
      puts "You chose to quit the game, bye bye"
    else
      puts "Entry invalid. Please enter 'p' for play or 'q' for quit."
    end  
  end 


  def turn
    turn_count = 1
    while turn_count <4
      puts "+++++++++ TURN #{turn_count} +++++++++++"
      puts "====COMPUTER BOARD==== "
      puts @computer.game_board.render
      puts "====PLAYER BOARD===="
      puts @user.game_board.render(true)
      
      user_shot
      computer_shot
      results


    # PLAYER INPUT
    # COMPUTER SHOT
    # PRINT BOTH RESULTS

    # GAME ENDS WHEN ETHIER COMPUTER SHIPS OR PLAYER SHIPS ALL SUNK
      turn_count += 1
    end
  end

  def computer_shot
    c_input_check = false
    while c_input_check == false
      @c_input = @user.game_board.cells.keys.sample(1)[0]
      if @user.game_board.valid_coordinate?(@c_input) == true && @user.game_board.cells[@c_input].fired_upon? == false
        #ACTION
        @user.game_board.cells[@c_input].fire_upon
        c_input_check = true
      end
    end 
  end 

  def user_shot
    puts "Enter the coordinate for your shot:"
    u_input_check = false
    while u_input_check == false
      @u_input = gets.chomp
      if @computer.game_board.valid_coordinate?(@u_input) == true && @computer.game_board.cells[@u_input].fired_upon? == false
        @computer.game_board.cells[@u_input].fire_upon
        u_input_check = true
      else
        puts "Please enter a valid coordinate"
      end
    end
  end 


  def results 
    puts "Your shot on #{@u_input} was a #{@computer.game_board.cells[@u_input].render}."
    puts "My shot on #{@c_input} was a #{@user.game_board.cells[@c_input].render}."

  end 

 
  # user.game_board.render 


  


end 

# game = Game.new
# puts game.start 