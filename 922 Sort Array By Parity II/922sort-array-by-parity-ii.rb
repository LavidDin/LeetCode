# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity_ii(a)
  sorted = []
  e,o = 0,1

  a.each do |i|
    if i.even?
      sorted[e] = i
      e += 2
    else
      sorted[o] = i
      o += 2
    end
  end

  sorted
end