import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
  var answer:Int64 = -1
  var sum = 0  
  
  for ride in 1...count {
    sum += ride * price
  }
  
  answer = Int64(sum > money ? (sum - money) : 0)

  return answer
}