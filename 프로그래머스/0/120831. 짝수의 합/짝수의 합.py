def solution(n):
    yan = 0
    for i in range (n + 1):
        if i % 2 == 0:
            yan += i
    return yan