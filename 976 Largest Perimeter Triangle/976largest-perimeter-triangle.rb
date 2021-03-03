# @param {Integer[]} a
# @return {Integer}
def largest_perimeter(a)
  a.sort!

  i = a.size-1
  while i > 1
    if a[i] < (a[i - 1] + a[i - 2])
      return a[i] + a[i - 1] + a[i - 2]
    end
    i -= 1 
  end
  return 0
end