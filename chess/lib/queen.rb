require_relative "piece"
require_relative "../modules/slideable"
class Queen < Piece

  def symbol

  end

  def move_dirs
    horizontal_dirs.concat(diagonal_dirs)
  end

  
  
end