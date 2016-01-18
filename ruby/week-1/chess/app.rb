require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/game.rb")


black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")

black_left_rook = Rook.new(1, 8, "black")
black_right_rook = Rook.new(8, 8, "black")
white_left_rook = Rook.new(1, 1, "white")
white_right_rook = Rook.new(1, 8, "white")

black_left_bishop = Bishop.new(3, 8, "black")
black_right_bishop = Bishop.new(6, 8, "black")
white_right_bishop = Bishop.new(3, 1, "white")
white_left_bishop = Bishop.new(6, 1, "white")

black_left_knight = Knight.new(2, 8, "black")
black_right_knight = Knight.new(7, 8, "black")
white_right_knight = Knight.new(2, 1, "white")
white_left_knight = Knight.new(7, 1, "white")

black_pawn = Pawn.new(2, 6, "black")
white_pawn = Pawn.new(2, 2, "white")

game = Game.new([1, 2, 3, 4, 5, 6, 7, 8], [1, 2, 3, 4, 5, 6, 7, 8])

puts game.move?(black_queen, 7, 5)
puts game.move?(black_queen, 1, 6)
puts game.move?(black_queen, 9, 4)


# puts "\nTesting the Pawn\n"
# puts "Good Moves"

# p black_pawn.can_move?(2, 5)
# p black_pawn.can_move?(2, 4)
# puts "Bad Moves"
# p white_pawn.can_move?(2, 5)
# p white_pawn.can_move?(5, 3)

# puts "\n-------------\n"

# p black_right_rook.pos_x

# puts "\nTesting the Queen\n"
# puts "Good Moves"

# p black_queen.can_move?(7, 5)
# p black_queen.can_move?(4, 6)
# puts "Bad Moves"
# p white_queen.can_move?(2, 4)
# p white_queen.can_move?(5, 3)

# puts "\n-------------\n"

# puts "\nTesting the Knights\n"
# puts "Good Moves"

# p black_left_knight.can_move?(3, 6)
# p black_right_knight.can_move?(6, 6)
# puts "Bad Moves"
# p white_left_knight.can_move?(2, 4)
# p white_right_knight.can_move?(5, 4)

# puts "\n-------------\n"

# puts "\nTesting the Bishops\n"
# puts "Good Moves"

# p black_left_bishop.can_move?(1, 6)
# p black_right_bishop.can_move?(3, 5)
# puts "Bad Moves"
# p white_left_bishop.can_move?(5, 1)
# p white_right_bishop.can_move?(6, 4)

# puts "\n-------------\n"


# puts "Testing the Rooks"
# puts "good moves"
# p black_left_rook.can_move?(1, 5)
# p black_right_rook.can_move?(5, 8)
# puts "bad moves"
# p white_right_rook.can_move?(7, 5)
# p white_left_rook.can_move?(2, 2)

# puts "\n-------------\n"

# puts "\nTesting the King"
# puts "good moves"
# p white_king.can_move?(6, 2)
# p white_king.can_move?(5, 2)
# p white_king.can_move?(4, 1)
# puts "bad moves"
# p white_king.can_move?(7, 2)
# p white_king.can_move?(1, 5)
# p white_king.can_move?(1, 1)

# puts "\n-------------\n"