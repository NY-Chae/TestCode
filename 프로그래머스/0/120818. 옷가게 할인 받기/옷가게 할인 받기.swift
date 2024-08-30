import Foundation

func solution(_ price:Int) -> Int {
    var yeon = price
    if price >= 500000 {yeon = Int(Double(price)*0.8)}
    else if price >= 300000 {yeon = Int(Double(price)*0.9)}    
    else if price >= 100000 {yeon = Int(Double(price)*0.95)}     
    return yeon
}