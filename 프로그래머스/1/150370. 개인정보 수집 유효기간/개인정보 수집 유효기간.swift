import Foundation

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var yeon = [Int]()
    var termDict = [String: Int]()
    let date = myDate(today: today)
    
    for t in terms {
        let term = t.components(separatedBy: " ")
        termDict[term[0]] = Int(term[1])
    }
    
    for p in privacies.indices {
        let privacy = privacies[p].components(separatedBy: " ")
        if myDate(today: privacy[0]) + (termDict[privacy[1]] ?? 0) * 28 <= date {
            yeon.append(p + 1)
        }
    }
    
    return yeon
}

private func myDate(today: String) -> Int {
    let date = today.split(separator: ".")
    let year = Int(date[0]) ?? 0
    let month = Int(date[1]) ?? 0
    let day = Int(date[2]) ?? 0
    return (year * 12 * 28) + (month * 28) + day
}
