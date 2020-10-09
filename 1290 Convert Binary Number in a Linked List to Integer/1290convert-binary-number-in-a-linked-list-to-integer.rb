# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  binary_nums = []
  current = head
  until current == nil
    binary_nums << current.val
    current = current.next
  end
    
  binary_nums = binary_nums.to_s.delete("^0-9")
  return binary_nums.to_i(2)
end