# @param {String} a
# @param {String} b
# @return {Boolean}
def buddy_strings(a, b)
  return false if a.length != b.length

  incorrect_indices = (0..a.length - 1).select {|i| a[i] != b[i]}

  case incorrect_indices.length
    when 0
      a.split('').uniq.length < a.length
    when 2
      ind1, ind2 = incorrect_indices
      a[ind1] == b[ind2] && a[ind2] == b[ind1]
    else
      false
  end
end