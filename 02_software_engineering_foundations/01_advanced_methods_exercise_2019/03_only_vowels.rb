# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
    vowels = "aeiou"
    str.split("").all? { |char| vowels.include?(char) }

end


p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false

# I mostly got this one on my own.  In the split method, I initially left out the
# (""), which caused incorrect output.  I thought I could omit that, but maybe 
# it can only be omitted when splitting at the space in strings of multiple
# words...it is still needed when splitting at each character.
