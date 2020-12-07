# @param {Integer} x
# @param {Integer} y
# @param {Integer} bound
# @return {Integer[]}
def powerful_integers(x, y, bound)
  powerful = []

  for i in 0..50
    for j in 0..50
      value = x**i + y**j
      powerful << value if value <= bound
    end
  end

  powerful.sort.uniq
end