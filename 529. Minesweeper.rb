# @param {Character[][]} board
# @param {Integer[]} click
# @return {Character[][]}
def update_board(board, click)

    if click[0] >= board.size || click[1] >= board[0].size || click[0] < 0 || click[1] < 0
        return board
    elsif board[click[0]][click[1]] == 'M'
        p "BOOM"
        board[click[0]][click[1]] = 'X'
        return board
    elsif board[click[0]][click[1]] == 'E'
        board[click[0]][click[1]] = 'B'
        count = count_boom board, click
        if count == 0
            [[click[0]+1,click[1]],[click[0]-1,click[1]],[click[0],click[1]+1],[click[0],click[1]-1],[click[0]+1,click[1]+1],[click[0]+1,click[1]-1],[click[0]-1,click[1]+1],[click[0]-1,click[1]-1]].each do |pos|
                board = update_board(board, pos)
            end
        else
            board[click[0]][click[1]] = count.to_s 
        end
    else
        return board
    end
    return board
end

def count_boom(board, click)
    count = 0
    [[click[0]+1,click[1]],[click[0]-1,click[1]],[click[0],click[1]+1],[click[0],click[1]-1],[click[0]+1,click[1]+1],[click[0]+1,click[1]-1],[click[0]-1,click[1]+1],[click[0]-1,click[1]-1]].each do |pos|
        unless pos[0] >= board.size || pos[1] >= board[0].size || pos[0] < 0 || pos[1] < 0
            count+=1 if board[pos[0]][pos[1]] == "M"
        end
    end
    return count
end

def get_available_square(board, point)

    if point[0]-1 < 0
        top_left = 0
        top_mid = 0
        top_right = 0
    else
        top_left = board[point[0]-1][point[1]-1]  
        top_mid = board[point[0]-1][point[1]]
        top_right = board[point[0]-1][point[1]+1]
    end

    if point[0] + 1 == board.length
        bot_left = 0
        bot_mid = 0
        bot_right = 0
    else
        bot_left = board[point[0]+1][point[1]-1]
        bot_mid = board[point[0]+1][point[1]]
        bot_right = board[point[0]+1][point[1]+1]
    end
    if point[1] - 1 < 0
        left = 0
        top_left = 0
        bot_left = 0
    else
        left = board[point[0]][point[1]-1]
    end
    if point[1] + 1 == board[0].length
        top_right = 0
        bot_right = 0
        right = 0
    else
        right = board[point[0]][point[1]+1]
    end
    mid = board[point[0]][point[1]]
    [[top_left, top_mid, top_right],[left, mid, right],[bot_left, bot_mid, bot_right]]
end

puts update_board([['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'M', 'E', 'E'], ['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'E', 'E', 'E']], [0,1])
puts update_board([['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'M', 'E', 'E'], ['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'E', 'E', 'E']], [3,1])
puts update_board([['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'M', 'E', 'E'], ['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'E', 'E', 'E']], [1,0])
puts update_board([['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'M', 'E', 'E'], ['E', 'E', 'E', 'E', 'E'], ['E', 'E', 'E', 'E', 'E']], [1,4])
# Output: 

# [['B', '1', 'E', '1', 'B'],
#  ['B', '1', 'M', '1', 'B'],
#  ['B', '1', '1', '1', 'B'],
#  ['B', 'B', 'B', 'B', 'B']]