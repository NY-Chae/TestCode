def solution(n, k):    
    baseCost = n * 12000
    
    if n >= 10:					
        discount = (k - n // 10) * 2000
    else:
        discount = k * 2000
    
    answer = baseCost + discount
    return answer
