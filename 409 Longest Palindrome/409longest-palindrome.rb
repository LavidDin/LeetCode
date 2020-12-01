# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  length = 0
  largest_odd = 0
  hash = Hash.new(0)

  s.each_char { |char| hash[char] += 1 }

  hash.each do |_k, v|
    if v % 2 > largest_odd && v.odd?
      largest_odd = v  
    elsif v >= 2
      length += v / 2 * 2
    end
  end

  length + largest_odd
end