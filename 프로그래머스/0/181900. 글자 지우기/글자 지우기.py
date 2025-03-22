def solution(my_string, indices):
    
    string_list = list(my_string)

    indices.sort()
    indices.reverse()
    
    for idx in indices:
        del string_list[idx]
    
    return ''.join(string_list)