# @param {String} s
# @return {Integer}
def roman_to_int(s)
   numeral_arr = s.split('')

   numeral_arr.each.with_index do |n, i|
    if n == 'I'
      numeral_arr[i] = 1
    elsif n == 'V'
      numeral_arr[i] = 5
    elsif n == 'X'
      numeral_arr[i] = 10
    elsif n == 'L'
      numeral_arr[i] = 50
    elsif n == 'C'
      numeral_arr[i] = 100
    elsif n == 'D'
      numeral_arr[i] = 500
    elsif n == 'M'
      numeral_arr[i] = 1000
    end
  end

  return sum_roman_arr(numeral_arr)
end

def sum_roman_arr(numeral_arr)

  total = 0
  
  i = 0
  while i <= numeral_arr.length-1
    if numeral_arr[i+1] === nil
      total += numeral_arr[i]
      i+=1
    elsif numeral_arr[i] < numeral_arr[i+1]
      total += numeral_arr[i+1] - numeral_arr[i]
      i+=2
    else
      total += numeral_arr[i]
      i+=1
    end
  end
  return total
end