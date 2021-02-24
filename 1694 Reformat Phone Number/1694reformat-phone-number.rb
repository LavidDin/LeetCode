# @param {String} number
# @return {String}
def reformat_number(number)
  number.gsub!(/-/, '')
  number.gsub!(/ /, '')
  number = number.split('')
  arr = []

  until number.size == 0
    temp = []
    if number.size == 4 || number.size == 2
      2.times { temp << number.shift }
      arr << temp.join('')
    else
      3.times { temp << number.shift }
      arr << temp.join('')
    end
  end
  
  arr.join('-')
end