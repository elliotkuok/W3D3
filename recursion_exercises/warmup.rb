def range(start, stop)
    return [] if stop <= start
    [start] + range(start + 1 , stop)
end

def exponent(b, n)
    return 1 if n == 0
    b * exponent(b, n-1)
end

def exponent1(b,n)
    return 1 if n == 0
    return b if n == 1

    if n.even?
        exponent1(b, n / 2) ** 2
    else
        b * (exponent1(b, (n - 1) / 2) ** 2)
    end
end

def deep_dup(array)

    array.each_with_index do |ele, i|
        return ele if !array.is_a?(Array)
        [ele.dup] + deep_dup(array[1..-1])
    end

end 

def fibonacci(n)
    return [1] if n == 1
    return [1,1] if n == 2

    fibonacci(n-1) << fibonacci(n-1).last + fibonacci(n-2).last
end

def bsearch(array, target)

    return nil if array.length == 0
    idx = array.length / 2
    return idx if array[idx] == target
    if target < array[idx]
        bsearch(array[0...idx], target)
    else
        if bsearch(array[idx + 1..-1], target) == nil
            nil
        else    
            idx + 1 + bsearch(array[idx + 1..-1], target)
        end
    end
    
end

def merge_sort(array)
    merge_helper(arr1, arr2) if array.length == 1


end

def merge_helper(arr1, arr2)
    results = []
    (0...arr1.length).each do |n|
        if arr2[n] != nil
            if arr1[n] < arr2[n]
                results << arr1[n]
                results << arr2[n]
            else
                results << arr2[n]
                results << arr1[n]
            end
        else
            results << arr1[n]
        end
        
    end
    results
end

p merge_helper([3, 27 ], [82])
# def merge_helper(arr1, arr2)
#     results = []
#     (0...arr1.length).each do |n|
#         if arr2[n] == nil
#             results << arr1[n]
#         else
#             if arr1[n] < arr2[n]
#                 results << arr1[n]
#                 results << arr2[n]
#             else
#                 results << arr2[n]
#                 results << arr1[n]
#             end
#         end
        
#     end
#     results
# end
