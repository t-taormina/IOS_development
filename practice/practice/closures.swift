//
//  closures.swift
//  practice
//
//  Created by tyler on 3/4/23.
//

import Foundation


let names = ["ollie", "arlo", "tillman", "tyler", "taury"]
var values = [[9,15], [1,3], [8,10], [2,6]]
// var values = [[11, 15]]
// var values = [[Int]]()

func find_overlap(_ data: inout [[Int]]) -> [[Int]] {
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

func backward(_ string1: String, _ string2: String) -> Bool {
    return string1 > string2
}

func inOrder(_ string1: String, _ string2: String) -> Bool {
    return string2 > string1
}















let driving = {
    print("I'm driving in my car.")
}

func travel() -> (String) -> Void {
    return {
        print("Go \($0)!")
    }
}

func practice() {
    //let result = find_overlap(&values)
    //print(result)
    let result = travel()
    result("Liverpool")
}
