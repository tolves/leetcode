# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
    return false if rec1[2] <= rec2[0] || rec1[3] <= rec2[1] || rec1[0] >= rec2[2] || rec1[1] >= rec2[3]
    true
end

# puts is_rectangle_overlap([5,15,8,18], [0,3,7,9])
puts is_rectangle_overlap([0,0,2,2], [1,1,3,3])
puts is_rectangle_overlap([7,8,13,15], [10,8,12,20])