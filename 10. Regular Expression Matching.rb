def is_match(s, p)
    return s.empty? if p.empty?
    first = !s.empty? && [s[0], '.'].include?(p[0])
   if p[1] == '*'
     is_match(s, p[2..-1]) || (first && is_match(s[1..-1], p))
   else
      first && is_match(s[1..-1], p[1..-1])
   end
  end