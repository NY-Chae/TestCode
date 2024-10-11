import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    // a ⊕ b를 문자열로 만들어 정수로 변환
    let ab = Int("\(a)\(b)")!
    
    // 2 * a * b 계산
    let product = 2 * a * b
    
    // 두 값 중 더 큰 값을 반환, 같으면 a ⊕ b를 반환
    return ab >= product ? ab : product
}