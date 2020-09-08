# @param {Integer} n
# @return {String}
def convert_to_title(n)
    alpha = ('A'..'Z').to_a
    title = []

    while n > 0
      title.unshift(alpha[n % 26 -1])
      break if n < 27 
        n = (n-1) / 26
    end


    title.join('')   
end