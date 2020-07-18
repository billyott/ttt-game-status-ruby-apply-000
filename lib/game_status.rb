# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

def won?(board)
  output = nil
  WIN_COMBINATIONS.each do |win_combination|
    moves = []
    win_combination.each do |board_index|
      moves << board[board_index]
    end
    if moves[0] == "X" && moves[1] == "X" && moves[2] == "X" || moves[0] == "O" && moves[1] == "O" && moves[2] == "O"
      output = win_combination
      break
    end
  end
  return output
end