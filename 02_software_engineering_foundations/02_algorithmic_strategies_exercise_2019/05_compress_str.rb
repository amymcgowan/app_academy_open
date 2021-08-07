# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# def compress_str(str)
#     arr = str.split
#     new_str = ""
    
#     same = true
    
#     (0...arr.length - 1).each do |i|
#         current_letter = arr[i]
#         while !same
#             same = false
#             current_count = 0
#             if arr[i] == arr [i + 1]
#                 current_count += 1
#                 same = true
#             end
#             new_str += current_count + current_letter
#         end
#         new_str += current_letter
#     end
#     new_str
# end

# def compress_str(str)
#     arr = str.split
#     new_str = ""

#     (0...arr.length - 1).each do |i|
#         count = 0
#         letter = arr[i]
#         next_letter = arr [i + 1]
#         if letter == next_letter
#             count += 1

#         else
#             count += 1
#             new_str += count + letter
#             count = 0
#         end
#     end

#     new_str
# end

def compress_str(str)
    new_str = ""

    i = 0
    while i < str.length
        char = str[i]
        count = 0
        while char == str[i]
            count += 1
            i += 1
        end

        if count > 1
            new_str += count.to_s + char
        else
            new_str += char
        end
    end

    new_str
end



p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"

# This one was very tricky.  I feel like I had good ideas of what needed to happen
# but I wasn't quite getting there.  Maybe I gave up on it too quickly?  I need 
# play with it on the screen twice and tried to map it out on paper too...still
# didn't get there.  The final part is from the solution.  I tried doing it with
# an enumerable, but the walkthrough went back to a basic while loop...I didn't
# think of that.  I did know I needed to keep a count as I was iterating and
# that it would need to reset.  I also had a feeling I'd need some kind of nested
# loops.  The first try was overly complicated...the second was just off.
