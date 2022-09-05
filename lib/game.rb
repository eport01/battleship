class Game 
  attr_reader :user, :computer, :turn, :user_shot, :computer_shot, :results 
  def initialize(computer, user)
    @computer = computer
    @user = user

  end 
  def start
    start_input = "l"
    until start_input == "q"
      puts "Welcome to BATTLESHIP \n" +
       "Enter p to play. Enter q to quit."
       start_input = gets.chomp 

       if start_input.downcase == 'p' 
         @computer.random_placement_cruiser
         @computer.random_placement_submarine
         @user.user_cruiser_placement
         @user.user_submarine_placement 
         turn 
         clear_board
         @user.reset_ship
         @computer.reset_ship 
         @user.has_lost
         @computer.has_lost

       elsif start_input.downcase == 'q' 
         puts "You chose to quit the game, bye bye"
       else
         puts "Entry invalid. Please enter 'p' for play or 'q' for quit."
       end 
    end
  end 

  def turn
    turn_count = 1
    while @user.has_lost == false && @computer.has_lost == false  
      puts "+++++++++ TURN #{turn_count} +++++++++++"
      puts "====COMPUTER BOARD==== "
      puts @computer.game_board.render
      puts "====PLAYER BOARD===="
      puts @user.game_board.render(true)
      user_shot
      computer_shot
      results
      turn_count += 1
    end

    puts " "
    puts "====COMPUTER BOARD==== "
    puts @computer.game_board.render
    puts "====PLAYER BOARD===="
    puts @user.game_board.render(true)
    puts " "

    if @user.has_lost == true && @computer.has_lost == false 
      puts "****************** \n" +
      "Good game! I won! \n" +
      "******************"
    elsif  @computer.has_lost == true && @user.has_lost == false 
      puts "****************** \n" +
      "Good game! You won! \n" +
      "******************"
    elsif  @computer.has_lost == true && @user.has_lost == true 
      puts "****************** \n" +
      "It's a tie! Play again! \n" +
      "******************"
    end
  end

  def computer_shot
    c_input_check = false
    while c_input_check == false
      @c_input = @user.game_board.cells.keys.sample(1)[0]
      if @user.game_board.valid_coordinate?(@c_input) == true && @user.game_board.cells[@c_input].fired_upon? == false
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
    puts " "
    if @computer.game_board.cells[@u_input].render == "M"
      puts "Your shot on #{@u_input} was a miss."
    elsif @computer.game_board.cells[@u_input].render == "H"
      puts "Your shot on #{@u_input} was a hit."
    elsif @computer.game_board.cells[@u_input].render == "X"
      puts "Your shot on #{@u_input} was a hit. The ship has sunk!"
    end

    if @user.game_board.cells[@c_input].render == "M"
      puts "My shot on #{@c_input} was a miss."
    elsif @user.game_board.cells[@c_input].render == "H"
      puts "My shot on #{@c_input} was a hit."
    elsif @user.game_board.cells[@c_input].render == "X"
      puts "My shot on #{@c_input} was a hit. The ship has sunk!"
    end
    puts " "
  end 

  def clear_board 
    @user.game_board.cells.keys.map do |a_cell|
      @user.game_board.cells[a_cell].make_empty 
    end 
    @computer.game_board.cells.keys.map do |c_cell|
      @computer.game_board.cells[c_cell].make_empty 
    end 
  end
end 

