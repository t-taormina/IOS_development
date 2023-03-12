//
//  islandInterview.swift
//  practice
//
//  Created by tyler on 3/9/23.
//

import Foundation




let testSet_1: [[Bool]] = [[true, false, false, false, false],
                           [true, true, false, false, false],
                           [false, false, false, false, false],
                           [true, false, false, false, false],
                           [true, false, false, false, false]]

func findLand(_ data: [[Bool]]) -> [(Int, Int)]{
    var marked = [(Int,Int)] ()
    if data.count == 0 { return marked }
    for i in 0..<data.count {
        for j in 0..<data[0].count {
            if data[i][j] {
                marked.append((i,j))
            }
        }
    }
    return marked
}

func findConnections(_ data: [(Int, Int)]) -> Int {
    if data.count <= 1 { return data.count }
    var count = 0
    var islands = [[(Int, Int)]] ()
    islands[count].append(data[count])
    for coordinates in data[1...] {
        if isNeighbor(coordinates, &islands[count]) { islands[count].append(coordinates) }
        else {
            count += 1
            islands[count].append(coordinates)
        }
    }
    return count
}

func isNeighbor(_ coordinates: (Int, Int), _ islands: inout [(Int, Int)]) -> Bool {
    return true
}


struct Stack<Element> {
    fileprivate var  array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
}

// ================================================
// ================== DRIVER ======================
// ================================================
func practice_island() {
    let land = findLand(testSet_1)
    let result = findConnections(land)
}

