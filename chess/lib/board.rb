require_relative 'piece'
require_relative 'rook'
require_relative 'queen'
require_relative 'bishop'
require_relative 'king'
require_relative 'knight'
require_relative 'pawn'
require_relative 'null_piece'

# require 'colorize'
class Board
  attr_reader :rows

  
  def initialize
    @rows = Array.new(8) {Array.new(8, nil)}

    
    @rows[0][0] = Rook.new("black",self,[0,0])
    @rows[0][1] = King.new("black",self,[0,1])
    @rows[0][2] = Bishop.new("black",self,[0,2])
    @rows[0][3] = King.new("black",self,[0,3])
    @rows[0][4] = Queen.new("black",self,[0,4])
    @rows[0][5] = Bishop.new("black",self,[0,5])
    @rows[0][6] = King.new("black",self,[0,6])
    @rows[0][7] = Rook.new("black",self,[0,7])

    @rows[7][0] = Rook.new("white",self,[7,0])
    @rows[7][1] = King.new("white",self,[7,1])
    @rows[7][2] = Bishop.new("white",self,[7,2])
    @rows[7][3] = Queen.new("white",self,[7,3])
    @rows[7][4] = King.new("white",self,[7,4])
    @rows[7][5] = Bishop.new("white",self,[7,5])
    @rows[7][6] = King.new("white",self,[7,6])
    @rows[7][7] = Rook.new("white",self,[7,7])




    # (0..1).each do |i|
    #   @rows[i].each_with_index do |ele, idx|
    #     @rows[i][idx] = Piece.new('black', self, [i, idx])
    #   end
    # end
    
    # (6..7).each do |i|
    #   @rows[i].each_with_index do |ele, idx|
    #     @rows[i][idx] = Piece.new('white', self, [i, idx])
    #   end
    # end
    # @sentinel = NullPiece.new
  end

  def [](pos)
    row, col = pos
    self.rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    self.rows[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].nil? #if no piece at start
      raise "There is no piece here"
    elsif !self[end_pos].nil? #if piece at end (later check color of piece, and if on board)
      raise "There is a piece here!!"
    end
    #move piece and set start to nil
    start_piece = self[start_pos]
    self[start_pos] = nil
    self[end_pos] = start_piece
  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)

  end

  def in_check?(color)

  end

  def find_king(color)

  end

  def pieces

  end

  def dup

  end

end

if $PROGRAM_NAME == __FILE__
  test = Board.new
  p test
end