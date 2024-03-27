import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let w = park[0].count
    let h = park.count
    
    var map = Array(repeating: Array(repeating: "", count: w), count: h)
    var puppy = [0, 0]
    var next = [0, 0]

    func isValid(y: Int, x: Int) -> Bool {
        return 0 <= y && y < h && 0 <= x && x < w ? true : false
    }

    for i in 0..<park.count {
        map[i] = park[i].map { String($0) }
        if let startIdx = map[i].firstIndex(of: "S") {
            puppy = [i, startIdx]
        }
    }
    
    var directions = [[String]]()
    for i in 0..<routes.count {
        directions.append(routes[i].split(separator: " ").map {String($0)})
    }
    
    for i in 0..<directions.count {
        var isNext = true
        
        switch directions[i][0] {
        case "E":
            next = [puppy[0], puppy[1]+Int(directions[i][1])!]
            if isValid(y: next[0], x: next[1]) {
                for i in puppy[1]...next[1] {
                    if map[next[0]][i] == "X" {
                        isNext = false
                        break
                    }
                }
                if isNext {
                    puppy = next
                }
            }

        case "W":
            next = [puppy[0], puppy[1]-Int(directions[i][1])!]
            if isValid(y: next[0], x: next[1]) {
                for i in next[1]...puppy[1] {
                    if map[next[0]][i] == "X" {
                        isNext = false
                        break
                    }
                }
                if isNext {
                    puppy = next
                }
            }
            
        case "S":
            next = [puppy[0]+Int(directions[i][1])!, puppy[1]]
            if isValid(y: next[0], x: next[1]) {
                for i in puppy[0]...next[0] {
                    if map[i][next[1]] == "X" {
                        isNext = false
                        break
                    }
                }
                if isNext {
                    puppy = next
                }
            }
            
        default:
            next = [puppy[0]-Int(directions[i][1])!, puppy[1]]
            if isValid(y: next[0], x: next[1]) {
                for i in next[0]...puppy[0] {
                    if map[i][next[1]] == "X" {
                        isNext = false
                        break
                    }
                }
                if isNext {
                    puppy = next
                }
            }
        }
    }
    return puppy
}