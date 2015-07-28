# public String convert(String s, int nRows) {
#                 if(s == null || s.length()==0 || nRows <=0)
#                   return "";
#                   if(nRows == 1)
#                     return s;
#                     StringBuilder res = new StringBuilder();
#                     int size = 2*nRows-2;
#                     for(int i=0;i<nRows;i++)
#                     {
#                         for(int j=i;j<s.length();j+=size)
#                         {
#                             res.append(s.charAt(j));
#                         if(i!=0 && i!=nRows-1 && j+size-2*i<s.length())
#                           res.append(s.charAt(j+size-2*i));
#                           }
#                           }
#                           return res.toString();
#                           }

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  if s == nil || s.size == 0 || num_rows <= 0
    return ""
  end
  if num_rows == 1
    return s
  end
  size = 2 * num_rows - 2
  res = ""
  (0..num_rows-1).each do |i|
    j = i.to_i
    while j<s.size
      res = res.to_s + s[j]
      if (i!=0) && (i!= num_rows - 1) && (j + size - 2 * i < s.size)
        res = res.to_s + s[j+size-2*i]
      end
      j = j + size
    end
  end
  return res.to_s
end
puts convert("abc",2)