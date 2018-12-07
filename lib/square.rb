class Square
  attr_accessor :x, :y, :links

  def initialize(x, y)
    @x = x
    @y = y
    @links = Array.new(8, nil)
  end

  # Checks that a move is still inside the board's limits. If not, returns false
  def inside_board?(moves, i)
    return true if @x + moves[i][0] >= 0 && @x + moves[i][0] <= 7 && @y + moves[i][1] >= 0 && @y + moves[i][1] <= 7
    return false
  end

end
