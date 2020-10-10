# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
    ded=0
    for i in 1...time_series.length
        if time_series[i]-time_series[i-1]<duration
            ded+=(duration-(time_series[i]-time_series[i-1]))
        end
    end
    return time_series.length*duration-ded
end
