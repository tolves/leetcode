# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
    res = []
    n2l = nums2.length
    nums1.each_with_index {|n,i|
        index = nums2.index n
        while index < n2l
            if nums2[index] > n
                res.push nums2[index]
                break
            end
            index += 1
        end
        if res.length == i
            res.push -1
        end
    }
    res
end


puts next_greater_element([3,1,5,7,9,2,6], [1,2,3,5,6,7,9,11])