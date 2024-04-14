import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var dict = [String : Int]()
    for i in 0..<name.count {
    	dict[name[i]] = yearning[i]
    }
    
    var sum = [Int]()
    
    for i in 0..<photo.count {
    	let arr = photo[i]
        let points = arr.map{ (name: String) -> Int in
        						if dict[name] == nil {
                                	return 0                                  
                                } else {
                                	return dict[name]!
                                }
                            }
        sum.append(points.reduce(0,+))
    }
    return sum
}