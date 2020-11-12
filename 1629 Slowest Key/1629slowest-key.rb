# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  max_index = 0

  (release_times.length-1).downto(1) do |i|
      release_times[i]-=release_times[i-1]
  end

  release_times.each_with_index do |time, i|
    if time > release_times[max_index] 
      max_index = i
    elsif time == release_times[max_index] && keys_pressed[i] > keys_pressed[max_index]
      max_index = i
    end
  end

  keys_pressed[max_index]
end