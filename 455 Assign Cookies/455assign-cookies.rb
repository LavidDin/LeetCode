# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  count, child, cookie = 0, 0, 0

  while child <= g.size-1 && cookie <= s.size-1
    if g[child] <= s[cookie]
      count += 1 
      cookie += 1
      child += 1
    else
      cookie += 1
    end
  end

  count
end