# @param {Integer} n
# @return {Integer}
# def nth_ugly_number(n)
#     arr = []
#     (1..2**31).each_with_index do |num, index|
#         v = num
#         (2..5).each { |i| num /= i while num % i == 0 } if num > 0
#         arr.push(v) if num == 1
#         if arr.length == n
#             return arr.last
#         end
#     end
# end


def nth_ugly_number(n)
    i2, i3, i5 = 0, 0, 0
    ugly =[1]

    (1..n).each do |i|
        mu2, mu3, mu5 = ugly[i2]*2, ugly[i3]*3, ugly[i5]*5
        ugly[i] = [mu2, mu3, mu5].min
        i2 += 1 if ugly[i] == mu2
        i3 += 1 if ugly[i] == mu3
        i5 += 1 if ugly[i] == mu5
    end
    ugly[n]
end

puts nth_ugly_number(1500)