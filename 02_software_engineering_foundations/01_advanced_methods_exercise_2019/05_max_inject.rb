# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

def max_inject(*arr)
    arr.inject do |acc, num|
        if num > acc
            num 
        else
            acc
        end
    end
end


p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30

# I had this correct, but was doubtful and getting errors.  All I needed was the
# splat in the parameter.