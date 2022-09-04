
class Player 
  attr_reader :type, :game_board  
  def initialize(type)
    @type = type 
    @game_board = Board.new

  end 



end 