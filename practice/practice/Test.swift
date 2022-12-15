//
//  Test.swift
//  practice
//
//  Created by till on 12/14/22.
//


public func test_empty() -> Void {
    print("Testing insert and display functionality on empty list")
    print("=================================================")
    let list = List()
    let count: Int = list.display()
    print("Count:\(count)\n")
}

public func test_insert_and_display() -> Void {
    print("Testing insert and display functionality")
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
}
