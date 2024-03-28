func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var users = [String: Set<String>]() 
    var reported = [String: Int]()     


    for id in id_list {
        users[id] = []
        reported[id] = 0
    }

    for rpt in Set(report) {
        let reportIDs = rpt.split(separator: " ").map { String($0) }
        let user = reportIDs[0]      // 신고한 사람(유저)
        let reportee = reportIDs[1]

        users[user]!.insert(reportee) 
        reported[reportee]! +=  1     
    }

    let idCount = id_list.count
    var mailCounts = Array(repeating: 0, count: idCount)


    for i in 0..<idCount {
        for reportee in reported.keys where reported[reportee]! >= k {
            let reporter = id_list[i]

            if users[reporter]!.contains(reportee) {
                mailCounts[i] += 1
            }
        }
    }

    return mailCounts
}
