import Foundation

import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {

   ((eq == "=") ? (ineq == ">" ? n >= m : n <= m) : (ineq == ">" ? n > m : n < m)) == true ? 1 : 0
}