//
//  Test.swift
//  practice
//
//  Created by till on 12/14/22.
//

let DONT_BUILD = false
let BUILD = true

public func test() -> Void {
    // Test insert and display
    // test_empty()
    // test_insert_and_display()
    // test_remove()
    // test_tree_insert_and_display()
    test_tree_init_build()
}

public func test_tree_init_build() -> Void {
    print("Testing build during initialization..")
    print("===========================================================")
    let tree = BTree(BUILD)
    let count = tree.display()
    print("\nTotal nodes in tree: \(count)\n")
}

public func test_tree_insert_and_display() -> Void {
    print("Testing insert and display functionality on Binary Tree...")
    print("===========================================================")
    let tree = BTree(DONT_BUILD)
    tree.insert(25)
    tree.insert(4)
    tree.insert(5)
    tree.insert(18)
    tree.insert(97)
    tree.insert(54)
    tree.insert(58)
    tree.insert(55)
    tree.insert(60)
    tree.insert(70)
    let count = tree.display()
    print("\nTotal nodes in tree: \(count)\n")
}

public func test_empty() -> Void {
    print("Testing insert and display functionality on empty list...")
    print("=================================================")
    let list = List()
    let count: Int = list.display()
    print("Count: \(count)\n")
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

    check = list.remove(2)
    print("Removing 2...\n")
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
    print("Count: \(count)\n")
}

