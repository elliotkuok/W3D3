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
    return 'not found' if array.length == 0
    idx = array.length / 2
    return idx if array[idx] == target
    if target < array[idx]
        bsearch(array[0...idx], target)
    else
        bsearch(array[idx + 1..-1], target)
    end
    
    
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil