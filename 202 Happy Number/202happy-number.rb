def is_happy(n)
  current = n
  previous_vals = [n]
  
  while current != 1
    current = current.to_s.split('').reduce(0) { |sum, num| sum + num.to_i**2 }
    return false if previous_vals.include?(current)
    previous_vals << current
  end
  
  true
end