# @param {Integer[]} height
# @return {Integer}

def max_area(height)
    maxarea = 0
    l = 0
    r = height.length - 1

    while l < r do
        temp_max = (height[l]>height[r] ? height[r] : height[l]) * (r-l)
        maxarea = (maxarea>temp_max ? maxarea : temp_max)
        if height[l] < height[r]
            l += 1
        else
            r -= 1
        end
    end
    maxarea
end


max_area([1,8,6,2,5,4,8,3,7])