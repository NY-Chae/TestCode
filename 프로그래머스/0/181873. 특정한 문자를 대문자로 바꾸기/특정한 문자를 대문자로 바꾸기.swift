import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map { String($0) == alp ? alp.uppercased() : String($0) }.joined()
}
