import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var yeon = n
    for i in 1...t{
        yeon *= 2
    }
    return yeon
}