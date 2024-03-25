
def solution(today, terms, privacies):
    today = list(map(int, today.split('.'))) # [0]연, [1]월, [2]일
    terms = {i[0]: int(i[2:])for i in terms} # 딕셔너리
    
    yeon = [] # 파기해야할 정보
    for i, pri in enumerate(privacies): # 하나씩 비교
        day, kind = pri.split()
        day = list(map(int, day.split('.')))
        month = terms[kind] # 유효기간
        
        day[1] += month
        while day[1] > 12: # 월이 12보다 크면 월-12, 연+1을 계속 반복
            day[1] -= 12
            day[0] += 1
        
        day[2] -= 1
        if day[2] == 0: # 모든 월은 28일까지이므로 0이면 28로 바꿔줌
            day[2] = 28
            day[1] -= 1
        # print(day) # 보관 가능 일자
        
        # 파기해야할 정보
        if day[0] < today[0]:
            yeon.append(i+1)
        elif day[0] == today[0] and day[1] < today[1]:
            yeon.append(i+1)
        elif day[0] == today[0] and day[1] == today[1] and day[2] < today[2]:
            yeon.append(i+1)
                    
    return yeon