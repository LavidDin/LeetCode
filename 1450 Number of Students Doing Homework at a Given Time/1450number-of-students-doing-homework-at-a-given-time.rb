# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  count = 0
  (0...start_time.length).each do |i|
    count += 1 if (start_time[i] <= query_time) && (query_time <= end_time[i])
  end

  count
end