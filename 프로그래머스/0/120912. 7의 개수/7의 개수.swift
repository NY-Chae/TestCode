import Foundation

func solution(_ array:[Int]) -> Int {
    let sevenCount = Array(array.map(){String($0)}.joined()).filter{$0 == "7"}.count
    return sevenCount
}