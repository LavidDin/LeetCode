# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  distributed_candy_arr = Array.new(num_people, 0)
  num_candies = 1

  until candies == 0
    (0...num_people).each do |person|
      num_candies = candies if num_candies > candies
      distributed_candy_arr[person] += num_candies
      candies -= num_candies
      num_candies += 1
      return distributed_candy_arr if candies <= 0
    end
  end
end