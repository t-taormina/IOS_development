//
//  closures.swift
//  practice
//
//  Created by tyler on 3/4/23.
//

import Foundation


func findOverlap(_ data: inout [[Int]]) -> [[Int]] {
    // empty set and set containing one item returns itself
    if data.count <= 1 { return data }
    data = data.sorted(by: { $0[0] < $1[0] } )
    var solution = [[Int]] ()
    solution.append(data[0])
    for item in data[1...] {
        if check(solution, item){
            solution[solution.count - 1][1] = item[1]
        }
        else { solution.append(item) }
    }
    return solution
}

let check = {(sol: [[Int]], itm: [Int]) -> Bool in
    return itm[0] < sol[sol.count - 1][1] && sol[sol.count - 1][1] < itm[1]
}

let confirmValidIndex = { (index: Int, arraySize: Int) -> Bool in
        return index >= 0 && index < arraySize
}

// let names = ["ollie", "arlo", "tillman", "tyler", "taury"]
// var values = [[11, 15]]
// var values = [[Int]]()

// ================================================
// ================== DRIVER ======================
// ================================================
func practiceInterview() {
    var values = [[11,15], [1,3], [8,10], [2,6]]
    let valuesCheck = [11, 3, 8, 10, 2, 6]
    for i in 0..<valuesCheck.count {
        let newNum = i + 1
        if confirmValidIndex(newNum, valuesCheck.count) {
            print(valuesCheck[i])
        }
    }
    //var values = [[11, 15]]
    //var values = [[Int]]()
    let result = findOverlap(&values)
    print(result)
}
