# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  restored = Array.new(s.length , ' ')

  indices.each_with_index do |char_idx, i|
    restored[char_idx] = s[i]
  end
  restored.join('')
end