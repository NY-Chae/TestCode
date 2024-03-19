import Foundation

func solution(_ money:Int) -> [Int] {
   let yeon = 5500
    return [money / yeon , money % yeon]
}