require_relative "piece"
require_relative "../modules/stepable"

class Knight < Piece
  include Stepable
  OFFSETS = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]
  

  def symbol

  end

  def move_diffs
    OFFSETS
  end

end