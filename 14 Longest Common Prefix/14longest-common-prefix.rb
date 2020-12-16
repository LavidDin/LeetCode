# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  prefix = strs.min { |x, y| x.size <=> y.size }
  
  until strs.all? { |str| str.start_with?(/#{prefix}/) } || prefix == ''
    prefix = prefix[0...-1]
  end

  prefix
end