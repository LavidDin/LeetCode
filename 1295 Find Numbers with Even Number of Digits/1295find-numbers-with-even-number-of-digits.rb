# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    even_number_count = 0
    nums.each do |num|
        digit_count = 0
        new_num = num
        
        loop do
            new_num /= 10
            digit_count += 1
            if new_num < 1
                break
            end
            
        end
        
        if digit_count % 2 == 0
            even_number_count += 1
        end
    end
    even_number_count
end