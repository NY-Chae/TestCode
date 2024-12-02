import Foundation


let inp = readLine()!.components(separatedBy: [" "])
let (s1, a) = (inp[0], Int(inp[1])!)

for i in 0..<a {
    print(s1, terminator: "")
}