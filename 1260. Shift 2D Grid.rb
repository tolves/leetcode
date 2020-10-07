# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
    n = grid[0].length
    grid.flatten!
    (1..k).each do
        grid.insert(0, grid.pop)
    end
    grid.each_slice(n).to_a
end

puts shift_grid([[1,2,3],[4,5,6],[7,8,9]], 2)

# grid.flatten.rotate(-k).each_slice(grid[0].size).to_a
#Output: [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]