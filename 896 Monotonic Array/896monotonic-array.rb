# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a)
  a == a.sort || a == a.sort.reverse
end