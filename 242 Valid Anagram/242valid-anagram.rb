# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s_arr = s.split('').sort
  t_arr = t.split('').sort

  s_arr == t_arr
end
