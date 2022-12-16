//
//  LinkedList.swift
//  practice
//
//  Created by till on 12/14/22.
//


// Node class
fileprivate class Node {
    // Members
    fileprivate var value: Int?
    fileprivate var next: Node?
    
    // Methods
    init(_ value: Int) {
        self.value = value
    }
    
    fileprivate func display() -> Void {
        if self.value != nil { print(self.value!) }
        return
    }
    
    fileprivate func match(_ value: Int) -> Bool {
        if self.value != nil {
            return value == self.value!
        }
        return false
    }
    
    fileprivate func reset() -> Void {
        self.value = nil; self.next = nil;
    }
}


// Singly Linear Linked class
public class List {
    // Members
    fileprivate var head: Node?
    
    // Methods
    init() {
        self.head = nil
    }
    
    fileprivate var is_empty: Bool {
        return head == nil
    }
    
    // Tail insert recursive wrapper
    public func insert(_ value: Int) -> Void {
        if (is_empty){
            self.head = Node(value)
            return
        }
        return _insert(value, &self.head)
    }
    
    // Private tail insert recursive function
    private func _insert(_ value: Int, _ curr: inout Node?) -> Void {
        if let curr { _insert(value, &curr.next) }
        else {
            curr = Node(value)
            return
        }
    }
    
    public func remove(_ value: Int) -> Bool {
        if (is_empty) {
            return false
        }
        else if self.head!.match(value) {
            self.head = self.head?.next
            return true
        }
        return _remove(value, &self.head, &(self.head!.next))
    }
    
    private func _remove(_ value: Int, _ prev: inout Node?, _ curr: inout Node?) -> Bool {
        if curr != nil {
            if curr!.match(value) {
                curr = curr?.next
                return true
            }
            else { return _remove(value, &curr, &(curr!.next)) }
        }
        return false
    }
        
    // Display
    public func display() -> Int {
        if is_empty { return 0 }
        else { return _display(self.head)}
    }
    
    // Private display
    private func _display(_ curr: Node?) -> Int {
        if let curr { curr.display() }
        else { return 0 }
        return 1 + _display(curr!.next)
    }
}

