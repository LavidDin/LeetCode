# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
  inverted = []

  a.each do |sub|
    temp = []

    sub.each do |ele|
      if ele == 1
        temp << 0
      else
        temp << 1
      end
    end

    inverted << temp.reverse
  end

  inverted
end