# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  min = 0
  max = s.length
  arr = []

  s.each_char do |c|
    if c == 'I'
      arr << min
      min += 1
    else
      arr << max
      max -= 1
    end
  end
  
  arr << min
  arr
end