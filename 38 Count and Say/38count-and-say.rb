# @param {Integer} n
# @return {String}
def count_and_say(n)
  str = '1'
  return str if n == 1

  (n-1).times do |i|
    arr = str.split('')
    str = ''
    count = 1
    for i in 0..arr.length-1
      if arr[i] != arr[i+1]
        str += count.to_s + arr[i]
        count = 1
      else
        count += 1
      end
    end
  end

  str
end