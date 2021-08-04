# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arr)
    arr.flatten
end


p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]

# ...Using the flatten method seems to get at the same result as the solution
# walkthrough, which uses the inject method to iterate through each array and
# add to accumulator, a new array of all arrays. ...same result, I think...

