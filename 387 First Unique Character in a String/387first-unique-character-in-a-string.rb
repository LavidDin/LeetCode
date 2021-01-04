# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  used_chars = []

  s.each_char.with_index do |char, i|
    next if used_chars.include?(char)
    return s.index(char) if s.count(char) == 1
    used_chars << char
  end
  
  return -1
end