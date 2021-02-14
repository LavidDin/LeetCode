# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root, sum = 0, parent = nil)
  return 0 if root.nil?
  if (root.left.nil?) &&
      (root.right.nil?) &&
      (parent && parent.left == root)
      sum += root.val
  else
      root.left && sum = sum_of_left_leaves(root.left, sum, root)
      root.right && sum = sum_of_left_leaves(root.right, sum ,root)
  end
  sum
end