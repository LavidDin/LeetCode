# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    counts = Hash.new(0)
    nums.each { |num| counts[num] += 1 }
    counts.each do |k, v|
        return key = k if counts[k] == 1
    end
end