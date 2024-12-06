import Foundation

import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    
    var answer = ""
    
    for (first, second) in zip(str1, str2){
        answer.append(first)
        answer.append(second) 
    } 
     
    return answer
    
}