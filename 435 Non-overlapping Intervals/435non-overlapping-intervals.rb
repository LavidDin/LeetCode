# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
    intervals.sort_by!(&:last)
    i = 1
    count = 0
    current = intervals[0][1]

    while i < intervals.size
        if intervals[i][0] < current
            count += 1
        else
            current = intervals[i][1]
        end
        i += 1
    end
 
    p count
end