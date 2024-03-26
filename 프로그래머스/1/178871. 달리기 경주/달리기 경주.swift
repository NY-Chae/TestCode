import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {

    var yeon = players
    var runner: [String: Int] = [:]

    for (index, player) in players.enumerated() {
        runner[player] = index
    }

    for calling in callings {
        var index = runner[calling]!

        yeon.swapAt(index - 1, index)

        runner[yeon[index]] = index
        runner[yeon[index - 1]] = index - 1
    }

    return yeon
}
