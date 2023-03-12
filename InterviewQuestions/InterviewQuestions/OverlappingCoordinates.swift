//
//  OverlappingCoordinates.swift
//  InterviewQuestions
//
//  Created by tyler on 3/12/23.
//

import Foundation

struct Coordinates: Identifiable {
    var id = UUID()
    var x: Int
    var y: Int
    
    public static func  <(lhs: Coordinates, rhs: Coordinates) -> Bool {
        return lhs.x < rhs.x
    }
}
    
let check = {(sol: [Coordinates], itm: Coordinates) -> Bool in
    return itm.x < sol[sol.count - 1].y && sol[sol.count - 1].y < itm.y
}

func findOverlap(_ data: inout [Coordinates]) -> [Coordinates] {
    // empty set and set containing one item returns itself
    if data.count <= 1 { return data }
    data = data.sorted(by: { $0 < $1 } )
    var solution = [Coordinates] ()
    solution.append(data[0])
    for item in data[1...] {
        if check(solution, item){
            solution[solution.count - 1].y = item.y
        }
        else { solution.append(item) }
    }
    return solution
}

var values_1 = [
    Coordinates(x: 1, y: 3),
    Coordinates(x: 2, y: 6),
    Coordinates(x: 8, y: 10),
    Coordinates(x: 9, y: 15)]

var values_2 = [
    Coordinates(x: 1, y: 3),
    Coordinates(x: 8, y: 10),
    Coordinates(x: 2, y: 6),
    Coordinates(x: 9, y: 15)]

var values_3 = [
    Coordinates(x: 1, y: 3),
    Coordinates(x: 8, y: 10),
    Coordinates(x: 2, y: 6),
    Coordinates(x: 11, y: 15)]

var singleItemSet = [ Coordinates(x: 1, y: 3) ]

var emptySet = [Coordinates]()

