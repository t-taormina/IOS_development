//
//  LinkedList.swift
//  practice
//
//  Created by till on 12/14/22.
//


// Node class
fileprivate class Node {
    // Members
    private var value: Int
    var next: Node?
    
    // Methods
    init(_ value: Int) {
        self.value = value
    }
    
    fileprivate func display() -> Void {
        print(self.value)
        return
    }
}


// Singly Linear Linked class
public class List {
    // Members
    fileprivate var head: Node? = nil
    
    // Methods
    init () {
        self.head = nil
    }
    
    private var is_empty: Bool {
        return head == nil
    }
    
    // Tail insert recursive wrapper
    public func insert(_ value: Int) -> Void {
        if (is_empty){
            self.head = Node(value)
            return
        }
        return private_insert(value, &self.head)
    }
    
    // Private tail insert recursive function
    private func private_insert(_ value: Int, _ curr: inout Node?) -> Void {
        if let curr { private_insert(value, &curr.next) }
        else {
            curr = Node(value)
            return
        }
    }
    
    // Display
    public func display() -> Int {
        if is_empty { return 0 }
        else { return private_display(self.head)}
    }
    
    // Private display
    private func private_display(_ curr: Node?) -> Int {
        if let curr { curr.display() }
        else { return 0 }
        return 1 + private_display(curr!.next)
    }
}

