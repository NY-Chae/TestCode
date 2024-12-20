import Foundation

func solution(_ strArr: [String]) -> [String] {
    // strArr에서 짝수 인덱스는 소문자, 홀수 인덱스는 대문자로 변환
    var result: [String] = []

    for (index, str) in strArr.enumerated() {
        if index % 2 == 0 {
            result.append(str.lowercased()) // 짝수 인덱스 소문자
        } else {
            result.append(str.uppercased()) // 홀수 인덱스 대문자
        }
    }
    
    return result
}