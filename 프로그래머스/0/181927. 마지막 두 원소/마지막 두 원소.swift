import Foundation
func solution(_ num_list: [Int]) -> [Int] {
    var numList = num_list
    if numList.count >= 2 {
        let lastElement = numList[numList.count - 1]
        let secondLastElement = numList[numList.count - 2]
        
        if lastElement > secondLastElement {
            numList.append(lastElement - secondLastElement)
        } else {
            numList.append(lastElement * 2)
        }
    }
    return numList
}