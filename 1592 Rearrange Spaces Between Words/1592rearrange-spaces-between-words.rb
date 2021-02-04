# @param {String} text
# @return {String}
def reorder_spaces(text)
    arr = text.split(" ")
    spaces = text.count(" ")
    return arr[0] + (" "*spaces) if arr.size == 1
    spaces /= (arr.size-1)

    arr.join(" " * spaces) + (spaces * (arr.size-1) == text.count(" ") ? "" : " " * (text.count(" ") -(spaces * (arr.size-1))))
end
