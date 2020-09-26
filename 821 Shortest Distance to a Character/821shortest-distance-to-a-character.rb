# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  s_arr = s.split('')
  c_indices = []
  distances = []

  (0...s_arr.length).each do |i|
    c_indices << i if s_arr[i] == c
  end

  s_arr.each_with_index do |char, idx|
    smallest_distance = []

    c_indices.each do |j|
      if idx < j
        smallest_distance << j-idx
      else
        smallest_distance << idx-j
      end
    end
    distances << smallest_distance.min
  end

  distances
end