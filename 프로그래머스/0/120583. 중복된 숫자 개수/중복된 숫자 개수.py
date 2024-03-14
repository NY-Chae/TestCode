def solution(array, n):
    answer = len(list(filter(lambda x: x == n, array)))
    return answer
