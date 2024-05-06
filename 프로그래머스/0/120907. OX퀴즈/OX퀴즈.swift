import Foundation

func solution(_ quiz:[String]) -> [String] {
    var yeon: [String] = []
    
    for q in quiz {
        var list = q.components(separatedBy: " ")
        if list[1] == "-" {
            if Int(list[0])! - Int(list[2])! == Int(list[4])! {
                yeon.append("O")
            } else {
                yeon.append("X")
            }
        } else {
            if Int(list[0])! + Int(list[2])! == Int(list[4])! {
                yeon.append("O")
        } else {
                yeon.append("X")
            }
        }   
    }
        return yeon
    }
