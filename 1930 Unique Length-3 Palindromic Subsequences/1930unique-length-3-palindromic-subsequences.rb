# @param {String} s
# @return {Integer}
def count_palindromic_subsequence(s)
  seen = Hash.new { |h, k| h[k] = [] }
  count = 0

  # Record occurrences of each character
  s.chars.each_with_index { |char, index| seen[char] << index }

  seen.each do |char, indices|
    next if indices.size < 2
    
    first, last = indices.first, indices.last
    substr = s[(first + 1)...last]
    
    count += substr.chars.uniq.size
  end

  count
end