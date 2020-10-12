# @param {String} s
# @return {Integer}
def max_depth(s)
    depth, open = 0, 0
    s.each_char do |c|
        if c == '('
          open += 1
        elsif c == ')'
          open -= 1
        end
      depth = [depth, open].max
    end
  return depth
end