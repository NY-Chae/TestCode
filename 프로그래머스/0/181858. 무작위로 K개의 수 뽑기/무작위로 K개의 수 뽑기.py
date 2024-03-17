def solution(arr, k):
    yeon = []
    for i in arr:
        if i not in yeon:
            yeon.append(i)
        if len(yeon) == k:
            break

    return yeon + [-1] * (k - len(yeon))