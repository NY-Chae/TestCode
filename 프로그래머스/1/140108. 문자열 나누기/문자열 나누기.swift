import Foundation

func solution(_ s:String) -> Int {
    var arr = s.map{String($0)}
    var keepArr = [String]()
    var firstStr = ""
    var result = 0

    for i in 0..<arr.count {
        if keepArr.isEmpty {
            firstStr = arr[i]
            keepArr.append(firstStr)
        } else {
            keepArr.append(arr[i])
            if keepArr.filter{$0 == firstStr}.count == keepArr.filter{$0 != firstStr}.count {
                keepArr.removeAll()
                result += 1
            }
        }
        if i == arr.count - 1 {
            if keepArr.count > 0 {
                result += 1
            }
        }
    }

    return result
}