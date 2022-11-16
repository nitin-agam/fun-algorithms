


/*
 Title: Count Complete Tree Nodes
 Level: Medium
 Link: https://leetcode.com/problems/count-complete-tree-nodes/
 
 Problem: Given the root of a complete binary tree, return the number of the nodes in the tree.
 
 According to Wikipedia, every level, except possibly the last, is completely filled in a complete binary tree, and all nodes in the last level are as far left as possible. It can have between 1 and 2h nodes inclusive at the last level h.

 Design an algorithm that runs in less than O(n) time complexity.
 
 Example:
 Input: root = [1,2,3,4,5,6]
 Output: 6
 
 /**
  * Definition for a binary tree node.
  * public class TreeNode {
  *     public var val: Int
  *     public var left: TreeNode?
  *     public var right: TreeNode?
  *     public init() { self.val = 0; self.left = nil; self.right = nil; }
  *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
  *         self.val = val
  *         self.left = left
  *         self.right = right
  *     }
  * }
  */
 */

import Foundation

class Solution {
    
    func countNodes(_ root: TreeNode?) -> Int {
        
        if root == nil { return 0 }
        
        var leftNode = root
        var rightNode = root
        var left = 0
        var right = 0
        
        while leftNode != nil {
            left += 1
            leftNode = leftNode?.left
        }
        
        while rightNode != nil {
            right += 1
            rightNode = rightNode?.right
        }
        
        if left == right {
            return Int(pow(2, Double(left))) - 1
        }
        
        return 1 + self.countNodes(root?.left) + self.countNodes(root?.right)
    }
}

// For output, you can try this code on LeetCode platform.
