require_relative "piece"
require_relative "../modules/slideable"

class Rook < Piece
  include Slideable
  
  def move_dirs
    horizontal_dirs 
  end
  
end

if $PROGRAM_NAME == __FILE__
  new_board = Board.new
  rookie = Rook.new('red',new_board, [0,0])
end