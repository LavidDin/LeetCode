# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  sorted = []

  arr2.each do |i|
    arr1.count(i).times { sorted << i }
    arr1.delete(i)
  end

  sorted.push(arr1.sort!).flatten!
end