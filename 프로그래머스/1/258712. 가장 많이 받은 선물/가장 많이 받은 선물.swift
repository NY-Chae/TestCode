func solution(_ friends: [String], _ gifts: [String]) -> Int {
    var answer = 0
    let dic = friends.enumerated().reduce(into: [String: Int]()) { $0[$1.element] = $1.offset }
    var intArray = [Int](repeating: 0, count: friends.count)
    var giftArrays = [[Int]](repeating: [Int](repeating: 0, count: friends.count), count: friends.count)

    for gift in gifts {
        let stringArray = gift.components(separatedBy: " ")
        guard let giverIndex = dic[stringArray[0]], let receiverIndex = dic[stringArray[1]] 
        else { break }

        giftArrays[giverIndex][receiverIndex] += 1
        intArray[giverIndex] -= 1
        intArray[receiverIndex] += 1
    }
    for i in intArray.indices {
        var count = 0

        for j in 0..<intArray.count {
            guard i != j else {
                continue
            }
            if giftArrays[j][i] < giftArrays[i][j] || (giftArrays[j][i] == giftArrays[i][j] && intArray[i] < intArray[j]) {
                count += 1
            }
        }
        if answer < count {
            answer = count
        }
    }
    return answer
}