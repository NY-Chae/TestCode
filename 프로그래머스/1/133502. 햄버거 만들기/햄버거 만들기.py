def solution(ingredient):
    stack = []
    yeon = 0
    for i in ingredient:
        stack.append(i)
        if stack[-4:] == [1,2,3,1]:
            yeon += 1
            for _ in range(4):
                stack.pop()
            
    return yeon