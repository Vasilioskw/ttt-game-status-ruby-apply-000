# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],

  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8],

  ]


# def empty_board(board)
#  empty_board = board.all {|x| x == " "}
#
# end

def won?(board)
  # empty_board = board.all {|x| x == " "}
WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end 
end
#   winner = []
#   WIN_COMBINATIONS.each do |win_array|
# if win_array.detect { |the_winner| board[the_winner] == "X" } || win_array.detect { |the_winner| board[the_winner] == "O" }
#
#   return win_array end


def full?(board)
#  !board.any? { |x| x == " " }
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
  # if !won?(board) && full?(board)
  #   return true
  #    elsif !won?(board) && !full?(board) || !won?(board)
  #   return false
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
 if number1 = won?(board)
  return board[number1.first]
 end
end
end
# if WIN_COMBINATIONS = board.any? { |x| board == "X"}
#   return "X"
# if WIN_COMBINATIONS = board.any? { |x| board == "O"}
#   return "O"
#   end
# end
# end
