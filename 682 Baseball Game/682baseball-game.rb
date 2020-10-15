# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  arr = []

  ops.each do |i|
    if i.to_i.to_s == i
      arr << i.to_i
    elsif i == 'C'
      arr.pop
    elsif i == 'D'
      arr << arr.last * 2
    elsif i == "+"
      arr << arr[-1] + arr[-2]
    end
  end
  return arr.reduce(:+)
end