# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  res = []
  (0..11).each do |h|
    (0..59).each do |s|
      res.push "#{h}:#{s.to_s.rjust(2, "0")}" if (h.to_s(2)+s.to_s(2)).count('1') == num
    end
  end
  res
end
