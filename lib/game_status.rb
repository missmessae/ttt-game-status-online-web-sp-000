# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  #Top row
  [3,4,5],  #Middle row
  [6,7,8],  #Bottom row
  [0,3,6],  #Left column
  [1,4,7],  #Middle column
  [2,5,8],  #Right column
  [0,4,8],  #Diagonal TL-BR
  [6,4,2]   #Diagonal BL-TR
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combo|
      index_0 = win_combo[0]
      index_1 = win_combo[1]
      index_2 = win_combo[2]

      position_1 = board[index_0]
      position_2 = board[index_1]
      position_3 = board[index_2]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
           return win_combo
     elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
          return win_combo
        end
      }
  return false
end


def full?(board)
  !board.include?(" ")
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  elsif won?(board) == true && full?(board) == true
    return false
  elsif won?(board) == true && full?(board) == false
    return false
    
    
end
