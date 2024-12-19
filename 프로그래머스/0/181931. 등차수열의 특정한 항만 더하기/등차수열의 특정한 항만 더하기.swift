import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result: Int = 0
    var num: Int = a
    
    for (_, idx) in included.enumerated() {
        if idx {
            result += num
        }
        num += d
    }
    
    return result
}