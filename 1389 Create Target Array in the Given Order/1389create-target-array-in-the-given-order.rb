# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    target_array = []
    
    nums.each.with_index do |num, idx|
        index[idx]
        target_array.insert(index[idx], num)
    end
    target_array
end
