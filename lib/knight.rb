class Knight
  attr_accessor :starting_square
  @@moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2]]

  require_relative "board"

  def initialize(x, y)
    @board = Board.new
    @starting_square = @board.squares[x-1][y-1]
    create_links(@starting_square)
  end
  # Finds the square but has no way to print the path and the number of moves
  # def knight_moves(target_x, target_y)
  #   queue = [@starting_square]
  #   paths = []
  #   queue.each do |square|
  #     if square.x === target_x - 1 && square.y === target_y - 1
  #       return square
  #     else
  #       8.times do |i|
  #         queue.push(square.links[i]) unless square.links[i].nil?
  #       end
  #     end
  #   end
  #   puts "Error"
  # end

  private

  # Creates all the links in the squares of the board uning recursion and based
  # on the possible moves of the piece (in this case the knight but can be used for others)
  def create_links(square)
    8.times do |i|
      if square.links[i].nil? && square.inside_board?(@@moves, i)
        square.links[i] = @board.squares[square.x + @@moves[i][0]][square.y + @@moves[i][1]]
        create_links(square.links[i])
      end
    end
  end

end
