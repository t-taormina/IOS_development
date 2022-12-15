//
//  Test.swift
//  practice
//
//  Created by till on 12/14/22.
//


public func test_empty() -> Void {
    print("Testing insert and display functionality on empty list...")
    print("=================================================")
    let list = List()
    let count: Int = list.display()
    print("Count:\(count)\n")
}

public func test_remove() -> Void {
    print("Testing Remove...")
    print("=================================================")
    let list = List()
    list.insert(1)
    list.insert(2)
    list.insert(3)
    list.insert(4)
    var count: Int = list.display()
    print("Count:\(count)\n")
    
    var check = list.remove(1)
    print("Removing 1...\n")
    count = list.display()
    print("Count:\(count)\n")
    print("Node found: \(check)\n")

    check = list.remove(2)
    print("Removing 2...\n")
    count = list.display()
    print("Count:\(count)\n")
    print("Node found: \(check)\n")

    check = list.remove(3)
    print("Removing 3...\n")
    count = list.display()
    print("Count:\(count)\n")
    print("Node found: \(check)\n")

    check = list.remove(4)
    print("Removing 4...\n")
    count = list.display()
    print("Count:\(count)\n")
    print("Node found: \(check)\n")

    check = list.remove(10)
    print("Removing 10...\n")
    count = list.display()
    print("Count: \(count)\n")
    print("Node found: \(check)\n")
}


public func test_insert_and_display() -> Void {
    print("Testing insert and display functionality...")
    print("=================================================")
    let list = List()
    list.insert(1)
    list.insert(2)
    list.insert(3)
    list.insert(4)
    let count: Int = list.display()
    print("Count:\(count)\n")
}

public func test() -> Void {
    // Test insert and display
    test_empty()
    test_insert_and_display()
    test_remove()
}
