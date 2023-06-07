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
    
end

