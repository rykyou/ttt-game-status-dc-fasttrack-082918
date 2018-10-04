# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first column
  [1,4,7], #second column
  [2,5,8], #third column
  [0,4,8], #diagonal
  [2,4,6], #another diagonal
  ]
  
#won method: returns winning array if there's a WIN_COMBINATIONS
def won?(board)
  WIN_COMBINATIONS.each do |win_combonation|
    first_index = win_combonation[0]
    second_index = win_combonation[1]
    third_index = win_combonation[2]
      
    if board[first_index] == "X" && board[second_index] == "X" && board[third_index] == "X"
      return win_combonation
    elsif board[first_index] == "O" && board[second_index] == "O" && board[third_index] == "O"
      return win_combonation
    end 
  end 
  return false 
end 
  
def full?(board)
  board.all? {|index| index == "X" || index == "O" }
end 

def draw?(board)
  if !won?(board) && full?(board)
    return true 
  elsif won?(board)
  end
end

def over?(board)
  if full?(board) || won?(board)
    true 
  end
end