func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var swapTemp: Int = 0
    var array = arr
    
    queries.forEach {
        swapTemp = array[$0[0]]
        array[$0[0]] = array[$0[1]]
        array[$0[1]] = swapTemp
    }
    return array
}