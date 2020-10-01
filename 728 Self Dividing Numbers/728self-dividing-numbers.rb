# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  self_dividing_nums = []

  (left..right).each do |i|
    i_arr = i.to_s.split('')

    unless i_arr.include?('0')
      self_dividing_nums << i if i_arr.all? {|digit| i % digit.to_i == 0 }
    end
  end

  self_dividing_nums
end