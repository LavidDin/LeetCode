# @param {Integer} row_index
# @return {Integer[]}
def get_row(k)
  [p=1]+(1..k).map{|i|p=p*(k-i+1)/i}
end