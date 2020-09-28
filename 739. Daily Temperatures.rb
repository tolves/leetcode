# @param {Integer[]} t
# @return {Integer[]}
# def daily_temperatures_idoit(t)
#     res = []
#     tl = t.length - 1
#     t.each_with_index { |n, i|
#         current_i = i
#         gap = 1
#         while t[current_i+1] && t[i]>=t[current_i+1]
#             gap+=1
#             current_i += 1
#             if current_i == tl
#                 gap = 0
#             end
#         end
#         if i == tl
#             gap = 0
#         end
#         res.push gap
#     }
#     res
# end


# def daily_temperatures_stupid(t)
#     res = [0] * t.length
#     tl = t.length - 1

#     t.each_with_index {|n,i|
#         if t[i+1] && t[i]<t[i+1]
#             res[i] = 1
#         end
#         gap = t[i..tl].index {|x| x>n}
#         res[i] = gap.nil? ? 0 : gap
#     }
#     res
# end

def daily_temperatures(t)
    ans = [0] * t.length
    stack = []
    t.each_with_index { |v, i|
        while stack.any? && t[stack[-1]] < v
            cur = stack.pop()
            ans[cur] = i - cur
        end
        stack.append(i)
    }
    return ans
end

puts daily_temperatures([89,62,70,58,47,47,46,76,100,70])