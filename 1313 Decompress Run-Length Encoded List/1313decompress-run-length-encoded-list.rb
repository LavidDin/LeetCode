# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    decompressed = []
    i = 0
    while i < nums.length-1
        nums[i].times do
            decompressed << nums[i+1]
        end
        i += 2
    end
    decompressed
end