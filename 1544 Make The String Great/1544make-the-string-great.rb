# @param {String} s
# @return {String}
def make_good(s)
    s = s.chars
    change = true
    while change
        change = false
        (0...s.size-1).each do |i|
            a,b = s[i],s[i+1]
            if (a != b) && (a.upcase == b || b.upcase == a)
                s = s[0...i] + s[i+2..-1]
                change = true
                break
            end
        end
    end
    s.join
end