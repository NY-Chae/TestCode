import Foundation

func solution(_ myString: String) -> String {
    var result = ""
    for char in myString {
        if char == "a" {
            result.append("A")
        } else if char.isUppercase && char != "A" {
            result.append(char.lowercased())
        } else {
            result.append(char)
        }
    }
    return result
}

