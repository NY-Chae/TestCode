def solution(n, k):    
    price_food = n * 12000		
    
    if n >= 10:					
        price_drink = (k - n // 10) * 2000	
    else :
        price_drink = k * 2000		
    
    answer = price_food + price_drink	
    return answer