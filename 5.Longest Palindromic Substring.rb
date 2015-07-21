
# // Transform S into T.
# // For example, S = "abba", T = "^#a#b#b#a#$".
# // ^ and $ signs are sentinels appended to each end to avoid bounds checking

def  preProcess(s)
            n = s.length().to_i
  if n==0
    return "^$"
  end
  ret = "^"
  (0..n-1).each do |re|
    ret += ('#' + s[re].to_s)
  end
  ret += '#$'
  return ret
end

def longestPalindrome(s)
  t = preProcess(s).to_s
  n = t.length().to_i
  c = 0
  r = 0
  p = Array.new(n)
  (1..n-2).each do |m|
    i_mirror = (2*c - m).to_i
    p[m] = (r>m) ? [r-m,p[i_mirror]].min : 0
#   Attempt to expand palindrome centered at i
    while t[m + 1 + p[m] ] == t[m -1 - p[m] ] do
      p[m] += 1
    end
#   If palindrome centered at i expand past R,
#   adjust center based on expanded palindrome.
    if (m + p[m] > r)
      c = m
      r = m + p[m]
    end

  end
#   Find the maximum element in P.
  maxLen = 0
  centerIndex = 0
  (1..n-2).each do |m|
    if(p[m] > maxLen)
      maxLen = p[m]
      centerIndex = m
    end
  end
  return s[(centerIndex - 1 - maxLen)/2, maxLen];

end

puts longestPalindrome('asdsf')