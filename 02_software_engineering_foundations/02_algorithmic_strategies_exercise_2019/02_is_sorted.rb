# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

# def is_sorted(arr)
#     arr.each_with_index do |num, i|
#         if num[i] < num[i + 1]
#             return true
#         end
#     end
#     false
# end

# using arr#each, don't have as much control over how far the iterations go.  
# also, there's a cleaner way (learned in the solution walkthrough):

def is_sorted(arr)
    (0...arr.length - 1).each do |i|
        return false if arr[i] > arr[i + 1]
    end
    true
end

# This was is definitely cleaner.  It iterates through the indicies rather than 
# each num in the array.



p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
