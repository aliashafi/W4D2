require_relative "piece"
require_relative "../modules/slideable"
require "singleton"

class NullPiece < Piece
  include Singleton
  attr_reader :color
  def initialize
    super("chartreuse")
  end

  def moves 
    ""
  end

  def symbol
    :n
  end




end