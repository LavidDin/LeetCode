# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
    count=0
    for i in 0...arr.length
        j = i
        while j<arr.length
            count+=arr[i..j].sum
            j+=2
        end
    end
    count
end
