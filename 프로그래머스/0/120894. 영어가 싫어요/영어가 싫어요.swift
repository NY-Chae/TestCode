import Foundation

func solution(_ numbers: String) -> Int {
    // 숫자 단어와 실제 숫자를 매핑하는 딕셔너리
    let numberMap: [String: String] = [
        "zero": "0", "one": "1", "two": "2", "three": "3", "four": "4",
        "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"
    ]
    
    var result = numbers
    
    // 딕셔너리의 각 단어를 순회하면서 문자열에서 변환
    for (word, digit) in numberMap {
        result = result.replacingOccurrences(of: word, with: digit)
    }
    
    // 변환된 문자열을 정수로 변환하여 반환
    return Int(result) ?? 0
}
