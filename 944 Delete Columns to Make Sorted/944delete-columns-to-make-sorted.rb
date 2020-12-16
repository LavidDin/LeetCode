# @param {String[]} a
# @return {Integer}
def min_deletion_size(a)
  count = 0

  arr = a.map { |str| str.split('') }.transpose

  arr.each_with_index do |str, idx|
    count += 1 if str != str.sort
  end

  count
end