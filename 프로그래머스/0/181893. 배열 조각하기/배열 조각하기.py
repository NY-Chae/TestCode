def solution(arr, query):
    result = arr
    
    for i, q in enumerate(query):
        if i % 2 == 0:
            # 짝수 인덱스에서는 query[i]번 인덱스를 제외하고 뒷부분을 자름
            result = result[:q + 1]
        else:
            # 홀수 인덱스에서는 query[i]번 인덱스를 제외하고 앞부분을 자름
            result = result[q:]
    
    return result