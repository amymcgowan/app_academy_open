require "byebug"
# no_dupes?
# Write a method no_dupes?(arr) that accepts an array as an arg and returns 
# an new array containing the elements that were not repeated in the array.

def no_dupes?(arr)
    counter = Hash.new(0)
    arr.each { |ele| counter[ele] +=1 }
    
    # new_array = []
    # counter.each do |k,v|
    #     new_array << k if v == 1
    # end
    # new_array
    counter.keys.select { |el| counter[el] == 1 }
end

# Examples
# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []

# no_consecutive_repeats?
# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg. 
# The method should return true if an element never appears consecutively in the 
# array; it should return false otherwise.

def no_consecutive_repeats?(arr)
    (0...arr.length - 1).each do |i|
        return false if arr[i] == arr[i+1]
    end
    true
end

# Examples
# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true


# char_indices
# Write a method char_indices(str) that takes in a string as an arg. The method 
# should return a hash containing characters as keys. The value associated with 
# each key should be an array containing the indices where that character is found.

def char_indices(str)
    hash = Hash.new { |h, k| h[k] = [] }

    str.each_char.with_index { |char, ind| hash[char] << ind }
    
    hash
end

# Examples
# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}


# longest_streak (????)
# Write a method longest_streak(str) that accepts a string as an arg. The method 
# should return the longest streak of consecutive characters in the string. If 
# there are any ties, return the streak that occurs later in the string.

def longest_streak(str)
    long_streak = ""
    new_streak = ""
    (0...str.length).each do |i|
        if str[i] == str[i-1] || i == 0
            new_streak += str[i]
        else
            new_streak = str[i]
        end
        
        if new_streak.length >= long_streak.length
            long_streak = new_streak
        end
    end
    long_streak
end

# Examples
# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'


# bi_prime?
# Write a method bi_prime?(num) that accepts a number as an arg and returns a 
# boolean indicating whether or not the number is a bi-prime. A bi-prime is a 
# positive integer that can be obtained by multiplying two prime numbers.

def bi_prime?(num)
    (2...num).each do |n|
        if num % n == 0
            return true if is_prime?(n) && is_prime?(num/n)
        end
    end
    false
end

def is_prime?(num)
    (2...num).none? { |n| num % n == 0 }
end

# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false

# vowel_rotate
# Write a method vowel_rotate(str) that accepts a string as an arg and returns 
# the string where every vowel is replaced with the vowel the appears before it 
# sequentially in the original string. The first vowel of the string should be 
# replaced with the last vowel.

def vowel_rotate(str)
    new_word = ""
    next_vowel = ""
    first_vowel_ind = ""

    str.each_char.with_index do |char, ind|
        if is_vowel?(char) && next_vowel.empty?
            first_vowel_ind = ind
            next_vowel = char
            new_word += char
        elsif is_vowel?(char)
            new_word += next_vowel
            next_vowel = char
        else
            new_word += char
        end
    end
    new_word[first_vowel_ind] = next_vowel
    new_word
end

def is_vowel?(char)
    "aeiou".include?(char)
end

# Examples
p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"


# multiply
# Write a method multiply(a, b) that takes in two numbers and returns their product.
# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator

def multiply(a, b)
    return 0 if b == 0

    if b < 0
        -(a + multiply(a, -b - 1))
    else
        a + multiply(a, b - 1)
    end
end

# Examples
# p multiply(3, 5)        # => 15
# p multiply(5, 3)        # => 15
# p multiply(2, 4)        # => 8
# p multiply(0, 10)       # => 0
# p multiply(-3, -6)      # => 18
# p multiply(3, -6)       # => -18
# p multiply(-3, 6)       # => -18


# lucas_sequence
# The Lucas Sequence is a sequence of numbers. The first number of the sequence 
# is 2. The second number of the Lucas Sequence is 1. To generate the next number 
# of the sequence, we add up the previous two numbers. For example, the first six 
# numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as an 
# arg. The method should return an array containing the Lucas Sequence up to the 
# given length. Solve this recursively.

def lucas_sequence(length)
    return [] if length == 0
    return [2] if length == 1
    return [2, 1] if length == 2
    
    seq = lucas_sequence(length - 1)
    next_el = seq[-1] + seq[-2]
    seq << next_el
    seq
end

# Examples
# p lucas_sequence(0)   # => []
# p lucas_sequence(1)   # => [2]    
# p lucas_sequence(2)   # => [2, 1]
# p lucas_sequence(3)   # => [2, 1, 3]
# p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
# p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]


# prime_factorization
# The Fundamental Theorem of Arithmetic states that every positive integer is 
# either a prime or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns an 
# array representing the prime factorization of the given number. This means that 
# the array should contain only prime numbers that multiply together to the given 
# num. The array returned should contain numbers in ascending order. Do this recursively.

def prime_factorization(num)
    return [num] if is_prime?(num)

    (2..num).each do |fact|
        if num % fact == 0
            prime_factorization(fact)
            other_fact = num / fact
            prime_factorization(other_fact)
        end
    end

end

# # Examples
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]