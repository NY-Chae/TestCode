import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    
    var yeon: [Int] = []
    
    for i in arr{
        if yeon.count < k {
            if yeon.contains(i) == false {
                yeon.append(i)
            }
        }
    }
    if yeon.count < k {
        (yeon.count...(k-1)).forEach{ _ in  yeon.append(-1) }
    }
    return yeon
}