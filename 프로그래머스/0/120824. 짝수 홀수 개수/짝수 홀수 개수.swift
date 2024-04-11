import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    
    var oddNumber = 0
    var evenNumber = 0
    
    for i in num_list {
        if i % 2 == 0 {
            oddNumber += 1
        } else {
            evenNumber += 1
        }
    }
    
    return [oddNumber, evenNumber]
}