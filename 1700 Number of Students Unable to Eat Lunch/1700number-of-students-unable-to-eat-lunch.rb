# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  until students.all? { |student| student != sandwiches.first } || students.empty?
    if students.first == sandwiches.first
      sandwiches.shift
      students.shift
    else
      students << students.shift
    end
  end

  sandwiches.count
end