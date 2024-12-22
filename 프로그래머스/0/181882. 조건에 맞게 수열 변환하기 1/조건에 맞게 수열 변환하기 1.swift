import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map { 
        if $0 % 2 == 0 && 50 <= $0 { return $0 / 2 }
        if $0 % 2 != 0 && 50 > $0 { return $0 * 2 }
        return $0
    }
}