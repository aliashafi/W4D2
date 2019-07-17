class Piece
  attr_reader :color, :board
  attr_accessor :pos
  def initialize(color, board, pos)
    @color = color.to_sym
    @board = board
    @pos = pos
  end

  def to_s

  end

  def empty?

  end

  def valid_moves
    pos[0] > 7 || pos[0] < 0 || pos[1] > 7 || pos[1] < 0 
    #a move is invalid if there's a piece at end 
  end

  def pos=(val)
    row, col = val
    @pos = row, col
  end

  def symbol

  end

  private
  def move_into_check?(end_pos)

  end
end