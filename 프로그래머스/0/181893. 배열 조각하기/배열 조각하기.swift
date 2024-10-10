import Foundation

func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var result = arr
    
    for (index, value) in query.enumerated() {
        if index % 2 == 0 {
            // 짝수 인덱스에서는 query[i]번 인덱스를 제외하고 뒷부분을 자름
            result = Array(result.prefix(value + 1))
        } else {
            // 홀수 인덱스에서는 query[i]번 인덱스를 제외하고 앞부분을 자름
            result = Array(result.suffix(result.count - value))
        }
    }
    
    return result
}