require './board'
require './ship'
require './cell'
require './game'

class Player 
  attr_reader :type, :a_board  
  def initialize(type, a_board)
    @type = type 
    @a_board = Board.new 

  end 



end 