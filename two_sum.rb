def two_sum ( numbers, target )
    numbers.each_with_index do | number , index |
        difference = target - number
	if numbers.include?(difference) && index != numbers.index(difference)
	index2 = numbers.index(difference)
	return [index+1, index+2].sort
	end
    end
end



numbers = Array[0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,7]
target = 6

puts two_sum(numbers, target)
