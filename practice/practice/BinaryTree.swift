//
//  BinaryTree.swift
//  practice
//
//  Created by till on 12/15/22.
//

// Modify tree size here
let SIZE = 10


// Node class
fileprivate class BNode {
    // Members
    // ---------------------------------------------------------------------------------
    
    fileprivate var value: Int?
    fileprivate var left: BNode?
    fileprivate var right: BNode?
    
    // Methods
    // ---------------------------------------------------------------------------------
    
    // Init
    init(_ value: Int) {
        self.value = value
    }
    
    // Displays the value data member.
    fileprivate func display() -> Void {
        if self.value != nil { print(self.value!) }
        return
    }
    
    // Determines if the calling object is less than the argument.
    fileprivate func less_than(_ value: Int) -> Bool {
        if self.value != nil {
            return self.value! <= value
        }
        return false
    }
    
    // Used like delete in c-lang. Resets all node values to nil.
    fileprivate func reset() -> Void {
        self.value = nil; self.left = nil; self.right = nil;
    }
} // End of class

public class BTree {
    // Member
    // ---------------------------------------------------------------------------------
    fileprivate var root: BNode?
    
    // Methods
    // ---------------------------------------------------------------------------------
    
    // Init function
    init(_ auto_build: Bool) {
        if auto_build {
            self.root = nil
            build(SIZE)
        }
        else {self.root = nil }
    }
    
    // Wrapper for private recursive function to insert a value into the tree.
    public func insert(_ value: Int) -> Void {
        if self.root == nil {
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
        else { return _insert(&root!.left, value) }
    }
    
    // Wrapper for private recursive function to display all values in the tree.
    public func display() -> Int {
        if self.root == nil { return 0 }
        var level: Int = 0
        return _display(self.root, &level)
    }
    
    // Recursive function to display all values in the tree.
    private func _display(_ root: BNode?, _ level: inout Int) -> Int {
        if root == nil {
            return 0
        }
        print("Level: \(level)")
        root!.display()
        var count = 1
        level += 1
        count += _display(root!.left, &level)
        count += _display(root!.right, &level)
        level -= 1
        return count
    }
    
    private func build(_ size: Int) {
        for _ in 1...size {
            let rand_num: Int = Int.random(in: 1...100)
            insert(rand_num)
            // store rand_num in the order inserted for trouble shooting. This will allow hard coding of insertions.
            // Numbers in the order they were inserted:
            // print all rand_nums (x, x, x, x,...)
        }
    }
} // End of Class

