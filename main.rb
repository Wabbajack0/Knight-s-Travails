require_relative "lib/knight"
x = rand(7) + 1
y = rand(7) + 1
knight = Knight.new(x, y)
puts "Starting position: (#{x}, #{y})"
x_final = rand(7) + 1
y_final = rand(7) + 1
square = knight.knight_moves(x_final, y_final)
puts "Final square: (#{x_final}, #{y_final})"
puts "(#{square.x+1}, #{square.y+1})"
