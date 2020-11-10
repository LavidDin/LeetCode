# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  trim = arr.length * 0.05
  (arr.sort[trim...-trim].sum / (arr.length * 0.9)).round(5)
end