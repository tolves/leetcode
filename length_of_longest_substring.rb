def length_of_longest_substring(s)
	@curMax = 0
	tmp_str = Array.new()
	tmp_str = s.split(//)
	while !tmp_str.empty? do
		charUsed = {}
        	start = 0
	  tmp_str.each_with_index do | str, index|
		if charUsed.has_value?(str) && index >= start
		  start = index
		  charUsed[index] = str
		else
		  charUsed[index] = str
		  maxTmp = index - start + 1
		  @curMax = [@curMax, maxTmp].max		
		end
	  end
	  tmp_str.shift
	end
	return @curMax
end


s = "aab"

puts length_of_longest_substring(s)
