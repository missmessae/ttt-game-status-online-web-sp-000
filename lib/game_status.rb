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
  WIN_COMBINATIONS.any? do |winner|
    winner == ["X", "X", "X"] || winner == ["O", "O", "O"]
  end
  WIN_COMBINATIONS.select do |winner|
    winner == ["X", "X", "X"] || winner == ["O", "O", "O"]
  end
end
