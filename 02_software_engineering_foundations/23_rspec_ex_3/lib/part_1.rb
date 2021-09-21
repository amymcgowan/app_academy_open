def is_prime?(num)
    return false if num < 2
    (2...num).none? { |n| num % n == 0 }
end

def nth_prime(n)
    count = 0 

    num = 1
    while count < n
        num += 1
        count += 1 if is_prime?(num)
    end
    
    # until is_prime?(num) do
    #     num +=1
    # end
    num
end

def prime_range(min, max)
    (min..max).select { |n| is_prime?(n) }
end