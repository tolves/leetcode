# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    array = []
    until array.include? n
        array << n
        n = n.digits.reverse.map { |a| a*a}
        return true if n.sum == 1
        n = n.sum
    end
    false
end

puts is_happy(2)