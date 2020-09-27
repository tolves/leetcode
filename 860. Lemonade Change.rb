# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
    sum = {5=>0, 10=>0, 20=>0}
    bills.each do |n|
        if n == 10
            if sum[5] > 0
                sum[5] -= 1
            else
                return false
            end
        end
        if n == 20
            if sum[10] > 0 && sum[5] > 0
                sum[10] -= 1
                sum[5] -= 1
            elsif sum[5] > 2
                sum[5] -= 3
            else
                return false
            end
        end
        sum[n] += 1
    end
    true
end


# Input: [5,5,10,10,20]
# Output: false

# Input: [10,10]
# Output: false

# Input: [5,5,10]
# Output: true

puts lemonade_change([5,5,5,10,20])
# puts lemonade_change([5,5,10,20,5,5,5,5,5,5,5,5,5,10,5,5,20,5,20,5])