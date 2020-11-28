# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
  return true if a == b
  a = a.split('')
  b = b.split('')

  a.length.times do |i|
    return true if a.rotate! == b
  end

  false
end