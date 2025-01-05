# @param {String} s
# @param {Integer[][]} shifts
# @return {String}
def shifting_letters(s, operations)
  n = s.size
  shifts = Array.new(n + 1, 0)
  
  operations.each do |op|
    start, end_i, direction = op
    shifts[start] += direction == 1 ? 1 : -1
    shifts[end_i + 1] -= direction == 1 ? 1 : -1
  end
  
  (1...n).each do |i|
    shifts[i] += shifts[i - 1]
  end

  shifted_s = s.chars.map.with_index do |char, i|
    ((char.ord - 'a'.ord + shifts[i]) % 26 + 'a'.ord).chr
  end
  
  shifted_s.join
end
