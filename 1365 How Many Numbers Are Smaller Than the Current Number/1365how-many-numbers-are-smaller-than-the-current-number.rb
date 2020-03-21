# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    smaller_numbers_than_current_array = []
    
    nums.each do |num|
        count = 0
        nums.each do |comparing_num|
            if num > comparing_num
                count += 1
            end
        end
        smaller_numbers_than_current_array << count
    end
    
    smaller_numbers_than_current_array        
end