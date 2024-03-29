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
    return array if array.length <= 1
    n = array.length / 2
    array1 = array[0...n] 
    array2 = array[n..- 1]
    merge_helper( merge_sort(array1), merge_sort(array2))
end


def merge_helper(arr1, arr2)
    results = []
    until arr1.length == 0 && arr2.length == 0 
        if arr1.length == 0
            results << arr2.shift
        elsif arr2.length == 0
            results << arr1.shift
        elsif arr1[0] < arr2[0]
            results << arr1.shift
        else
            results << arr2.shift
        end
    end
    results
end

def subsets(arr)
    
    return [[]] if arr.empty?
    previous_arr = subsets(arr[0...-1]) 
    new_subsets = previous_arr.map  { |subset| subset + [arr.last] }

    previous_arr + new_subsets
end


p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3]) # => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]