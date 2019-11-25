def merge_sort(array)
    return array if array.length == 0 or array.length == 1
    left_array = array[0...array.length/2]
    right_array = array[array.length/2...array.length]
    left_array = merge_sort(left_array)
    right_array = merge_sort(right_array)
    merge(left_array, right_array)
end

def merge(left_array,right_array)
    merged_array = []
    p = 0
    q = 0
    while p < left_array.length && q < right_array.length
        if left_array[p] <= right_array[q]
            merged_array << left_array[p]
            p += 1
        else
            merged_array << right_array[q]
            q += 1
        end
    end

    if p == left_array.length
        merged_array = merged_array + right_array[q...right_array.length]
    else q == right_array.length
        merged_array = merged_array + left_array[p...left_array.length]
    end
    merged_array
end