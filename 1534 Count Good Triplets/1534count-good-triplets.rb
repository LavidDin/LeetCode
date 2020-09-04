# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
    count = 0
    (0...arr.length-2).each do |i|
        (i+1...arr.length-1).each do |j|
            (j+1...arr.length).each do |k|
                if (arr[i] - arr[j]).abs <= a && (arr[j] - arr[k]).abs <= b && (arr[i] - arr[k]).abs <= c
                    count += 1               
                end
            end
        end
    end
    count
end