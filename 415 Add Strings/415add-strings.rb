# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  i = num1.length - 1
  j = num2.length - 1
  total = ''
  carry = 0
  while i >= 0 || j >= 0 || carry > 0
    sum = carry
    if i >= 0
        #p num1[i].ord - '0'.ord
        sum += num1[i].ord - '0'.ord
        i -= 1
    end
    if j >= 0
        sum += num2[j].ord - '0'.ord
        j -= 1
    end
    carry = sum/10

    total = String(sum%10) + total
  end
  
  total
end