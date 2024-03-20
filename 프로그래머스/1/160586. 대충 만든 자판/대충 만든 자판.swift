import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var dict = [String: Int]()
    var keymap = keymap.map { $0.map { String($0) } }
    var result = [Int]()
    
    for k in keymap {
        for i in k {
            if dict[i] == nil {
                dict[i] = k.firstIndex(of: i)!
            } else {
                dict[i] = min(dict[i]!, k.firstIndex(of: i)!)
            }
        }
    }
    
    for target in targets {
        var sum = 0
        for t in target.map { String($0) } {
            if dict[t] == nil {
                sum = -1
                break
            } else {
                sum += dict[t]! + 1
            }
        }
        result.append(sum)
    }
    
    return result
}
