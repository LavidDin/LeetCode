# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    split_num = 0
    start_idx = 0
    end_idx = 1
    s_array = s.split('')
    
    while end_idx <= s.length-1
        r_count = 0
        l_count = 0
        
        s_array[start_idx..end_idx].each do |char|
            if char == 'R'
                r_count += 1
            else
                l_count += 1
            end
        end

        if  r_count == l_count
            split_num += 1
            start_idx = end_idx+1
            end_idx +=2
        else
            end_idx += 1
        end
    end
    split_num
end