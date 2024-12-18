import Foundation

func solution(_ my_string: String) -> [String] {
    // 문자열을 공백(" ")을 기준으로 나눔
    return my_string.split(separator: " ").map { String($0) }
}
