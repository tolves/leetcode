# @param {String} s
# @return {Integer}
def roman_to_int(s)
    dict = {'M'=>1000, 'CM'=>900, 'D'=>500,'CD'=>400, 'C'=>100,'XC'=>90, 'L'=>50,'XL'=>40,'X'=>10, 'IX'=>9, 'V'=>5, 'IV'=>4, 'I'=>1}
    v = 0
    arr = s.split(//)
    arr.each_with_index do |i,j|
        a,b = dict[i], dict[arr[j+1]]
        if !dict[arr[j+1]].nil? && dict[i] < dict[arr[j+1]]
            v -= dict[i]
        else
            v += dict[i]
        end
    end
    v
end

roman_to_int('MCMXCIV')
roman_to_int('LVIII')