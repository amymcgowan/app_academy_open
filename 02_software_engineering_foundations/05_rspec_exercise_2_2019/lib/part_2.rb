def palindrome?(str)
    reversed = ""

    i = str.length - 1
    while i >= 0
        reversed += str[i]
        i -= 1
    end
    
    if str == reversed
        return true
    else
        return false
    end
end

# I like this method below... I was thinking along these lines, but wasn't sure
# how to go about it. I also like that it checks all characters and only returns
# true after all is checked.

# def palindrome?(str)
#     string.each_char.with_index do |char, i|
#         if string[i] != string[-i - 1]
#             return false
#         end
#     end
#     true
# end

def substrings(string)
    substrings = []

    (0...string.length).each do |start_ind|
        (start_ind...string.length).each do |end_ind|
            substrings << string[start_ind..end_ind]
        end
    end
    substrings
end

# Had a tricky time with the one above.  I was on the right track, but had line
# 33 iterating through "string" instead of the range.  Also, making my block
# variables more explicit helped me keep track of the mental logic and made me
# realize I was doing a task twice.  I was over complicating it.

def palindrome_substrings(string)
    substrings(string).select { |ele| ele.length > 1 && palindrome?(ele) }
end

# woot woot!
# helper methods as building blocks makes it so much easier!