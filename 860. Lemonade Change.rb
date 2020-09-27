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


def lemonade_change2(bills)
    sum = {5=>0, 10=>0, 20=>0}
    bills.each do |n|
        case n
            when 10
                if sum[5] > 0
                    sum[5] -= 1
                else
                    return false
                end
            when 20
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