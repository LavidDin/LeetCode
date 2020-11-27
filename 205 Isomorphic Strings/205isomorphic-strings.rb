# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  return false if s.length != t.length

  s_hash, t_hash = {}, {}

  0.upto(s.length) do |i|
    return false if s_hash[s[i]] != t_hash[t[i]]
    s_hash[s[i]], t_hash[t[i]] = i, i
  end

  true
end