# @param {Integer} n
# @return {String}
def thousand_separator(n)
  return n.to_s if n.to_s.length <= 3
  n.to_s.reverse.scan(/.{1,3}/).join('.').reverse
end
