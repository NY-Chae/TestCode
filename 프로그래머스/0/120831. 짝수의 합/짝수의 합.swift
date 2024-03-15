import Foundation

func solution(_ n:Int) -> Int {
    
    var i = 1
    var yan = 0
    for i in 1...n {
        if i % 2 == 0 {
            yan += i
        }
    }
    
    
    return yan
}