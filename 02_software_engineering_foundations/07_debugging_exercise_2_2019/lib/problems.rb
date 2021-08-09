# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

def largest_prime_factor(num)
    factors = (1..num).select { |n| num % n == 0 }
    factors.reverse_each do |factor|
        return factor if is_prime?(factor) 
    end
end

def is_prime?(num)
    return false if num < 2

    (2...num).each do |ele|
        if num % ele == 0
            return false
        end
    end
    true
end

# could also do... 

# def is_prime?(num)
#     return false if num < 2
#     (2...num).none? { |i| num % i == 0 }
# end

def unique_chars?(str)
    char_count = Hash.new(0)

    str.each_char do |char|
        char_count[char] += 1
    end

    char_count.none? { |k, v| v > 1 }
end

def dupe_indices(array)
    indicies = Hash.new { |h,k| h[k]=[] }
    
    array.each_with_index do |ele, i|
        indicies[ele] << i
    end
    
    # dupes = {}
    # indicies.each do |k, v|
    #     if v.length > 1
    #         dupes[k] = v
    #     end
    # end

    # dupes

    indicies.select { |ele, arr| arr.length > 1 }
end

# dupe_indicies was really tricky and I thought for sure I was way off or over-
# complicated... but I did a really good job!  I got the tip for how to format
# the block in line 43 from stackoverflow...which was then shown also in the 
# walkthrough.  I orignally did the dupes hash section on my own; it worked fine,
# but I liked the more condense #select form that was done in the walkthrough, 
# so wanted to try it.  I knew of #select for arrays, but didn't think of it
# for a hash.


def find_elements(arr)
    elements = Hash.new(0)

    arr.each { |ele| elements[ele] += 1 }

    elements
end

def ana_array(arr_1, arr_2)
    find_elements(arr_1) == find_elements(arr_2)
end

# OMG!!!! I did such a good job!  High five, me! :D  Got it all on my own and
# fairly quickly too.
