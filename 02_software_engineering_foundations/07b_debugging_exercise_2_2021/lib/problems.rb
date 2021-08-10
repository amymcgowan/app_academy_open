# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
    find_factors(num).reverse_each do |factor|
        return factor if is_prime?(factor)
    end
end

def is_prime?(num)
    return false if num < 2
    (2...num).none? { |i| num % i == 0 }
end

def find_factors(num)
    (1..num).select { |el| num % el == 0 }
end

def unique_chars?(str)
    chars = {}

    str.each_char do |char|
        if chars.has_key?(char)
            return false 
        else
            chars[char] = true
        end
    end
    true
end

def dupe_indices(arr)
    element_counts = Hash.new{ |h,k| h[k] = []}

    arr.each_with_index do |ele, i|
        element_counts[ele] << i
    end

    element_counts.select { |ele, arr| arr.length > 1 }
end

def ana_array(arr1, arr2)
    find_elements(arr1) == find_elements(arr2)
end

def find_elements(arr)
    elements = Hash.new(0)

    arr.each { |ele| elements[ele] += 1 }
    elements
end