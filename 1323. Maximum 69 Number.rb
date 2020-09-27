# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
    arr = num.digits.reverse
    if arr.index(6)
        arr[arr.index(6)] = 9
    end
    arr.join().to_i
end

def maximum69_number2 (num)
    num.to_s.sub('6','9').to_i
end

def maximum69_number3 (num)
    str = num.to_s
    i = str.index('6')
    if i
        str[i] = 9
    end
    str.to_i
end

puts maximum69_number(9999)