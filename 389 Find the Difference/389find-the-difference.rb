# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s_hash = Hash.new(0)
  t_hash = Hash.new(0)

  s.each_char { |char| s_hash[char] += 1}
  t.each_char { |char| t_hash[char] += 1}

  t_hash.delete_if { |k, v| s_hash[k] == v }
  t_hash.keys.first
end

# one liner (t.sum - s.sum).chr 