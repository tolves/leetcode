def find_median_sorted_arrays(nums1, nums2)

tmp_array = nums1 + nums2

tmp_array.sort!

tmp_array.size % 2 == 0 ? ((tmp_array[tmp_array.size/2-1].to_f + tmp_array[(tmp_array.size+1)/2].to_f) / 2) : (tmp_array[(tmp_array.size+1)/2-1].to_f) 

end


nums1 = []
nums2 = [2,3]

find_median_sorted_arrays(nums1, nums2)

