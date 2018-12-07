class Board
  attr_accessor :squares

  require_relative "square"

  def initialize
    @squares = []
    8.times { |i| @squares[i] = []}
    8.times do |x|
      8.times do |y|
        @squares[x][y] = Square.new(x, y)
      end
    end
  end

end
