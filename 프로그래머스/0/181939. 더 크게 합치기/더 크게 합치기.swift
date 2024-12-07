import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    if Int(String(a) + String(b))! >= Int(String(b) + String(a))! {
        return Int(String(a) + String(b))!        
    } 
    else {
        return Int(String(b) + String(a))!        
    }
}