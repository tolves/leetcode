# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    (2..5).each { |i| num /= i while num % i == 0 } if num > 0
    num == 1
end

is_ugly(15)