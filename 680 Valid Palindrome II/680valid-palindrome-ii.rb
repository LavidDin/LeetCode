# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  i = 0
  j = s.size - 1 

  while i < j 
    if s[i] == s[j]
      i += 1
      j -= 1
    else
      str1, str2 = s.dup, s.dup
      str1[j] = ''
      str2[i] = ''
      return (str1 === str1.reverse) || (str2 === str2.reverse)
    end
  end 
  
  true
end