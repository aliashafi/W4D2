require_relative 'piece'
# require 'colorize'
class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8) {Array.new(8, nil)}

    (0..1).each do |i|
      @rows[i].each_with_index do |ele, idx|
        @rows[i][idx] = Piece.new('black', self, [i, idx])
      end
    end
    
    (6..7).each do |i|
      @rows[i].each_with_index do |ele, idx|
        @rows[i][idx] = Piece.new('white', self, [i, idx])
      end
    end
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