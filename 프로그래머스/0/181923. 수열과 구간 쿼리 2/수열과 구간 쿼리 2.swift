func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var result = [Int]()
    
    for query in queries {
        let (s, e, k) = (query[0], query[1], query[2])
        var minValue: Int? = nil
        
        for i in s...e {
            if arr[i] > k {
                if let currentMin = minValue {
                    minValue = min(currentMin, arr[i])
                } else {
                    minValue = arr[i]
                }
            }
        }
        
        result.append(minValue ?? -1)
    }
    
    return result
}

        
