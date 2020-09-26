# @param {Integer} n
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
# def nth_ugly_number(n, a, b, c)
#     ugly = [1]
#     ia, ib, ic = 1, 1, 1
#     (1..n).each do |n|
#         ma, mb, mc = ia * a, ib * b, ic * c
#         ugly[n] = [ma, mb, mc].min
#         ia += 1 if ugly[n] == ma
#         ib += 1 if ugly[n] == mb
#         ic += 1 if ugly[n] == mc
#     end
#     ugly.last
# end

def nth_ugly_number(n, a, b, c)
    left, right = 0, 2 * 10 ** 9
    mid = (left + right)/2
    while left < right
        mid = (left + right)/2
        if count_ugly(mid, a, b, c) < n
            left = mid + 1
        else
            right = mid
        end

    end
    right
end

def count_ugly(n, a, b, c)
    (n/a + n/b + n/c) - (n/a.lcm(b) + n/a.lcm(c) + n/b.lcm(c)) + n/a.lcm(b).lcm(c)
end



puts nth_ugly_number(50,2,3,5)