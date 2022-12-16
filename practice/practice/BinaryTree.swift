//
//  BinaryTree.swift
//  practice
//
//  Created by till on 12/15/22.
//

// Node class
fileprivate class BNode {
    // Members
    fileprivate var value: Int?
    fileprivate var left: BNode?
    fileprivate var right: BNode?
    
    // Methods
    init(_ value: Int) {
        self.value = value
    }
    
    fileprivate func display() -> Void {
        if self.value != nil { print(self.value!) }
        return
    }
    
    fileprivate func less_than(_ value: Int) -> Bool {
        if self.value != nil {
            return self.value! < value
        }
        return false
    }
    
    fileprivate func reset() -> Void {
        self.value = nil; self.left = nil; self.right = nil;
    }
}


public class BTree {
    // Member
    fileprivate var root: BNode?
    
    // Methods
    // ---------------------------------------------------------------------------------
    
    // Init function
    init() {
        self.root = nil
    }
    
    // Wrapper for private recursive function to insert a value into the tree.
    public func insert(_ value: Int) -> Void {
        if root == nil {
            self.root = BNode(value)
            return
        }
        return _insert(&self.root, value)
    }
    
    // Recursive function to insert a value into the tree
    private func _insert(_ root: inout BNode?, _ value: Int) -> Void {
        if root == nil {
            root = BNode(value)
            return
        }
        if root!.less_than(value) { return _insert(&root!.right, value) }
        return _insert(&root!.left, value)
    }
    
    // Wrapper for private recursive function to display all values in the tree.
    public func display() -> Int {
        if self.root == nil { return 0 }
        else { return _display(self.root) }
    }
    
    // Recursive function to display all values in the tree.
    private func _display(_ root: BNode?) -> Int {
        if root == nil { return 0 }
        var count = 1
        count += _display(root!.left)
        root!.display()
        return count + _display(root!.right)
    }

// End of Class
}
