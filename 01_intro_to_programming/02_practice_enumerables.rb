# INTRO TO PROGRAMMING
# ENUMERABLES AND RANGES PRACTICE

# --------------------------------------------
# --------------------------------------------

# def to_initials(name)
#     initials = ""

#     names = name.split(" ")
#     names.each { |part| initials += part[0] }

#     initials
# end

# puts to_initials("Kelvin Bridges")      # => "KB"
# puts to_initials("Michaela Yamamoto")   # => "MY"
# puts to_initials("Mary La Grange")      # => "MLG"

# def first_in_array(arr, ele1, ele2)
#     ind1 = arr.index(ele1)
#     ind2 = arr.index(ele2)

#     return ele1 if ind1 < ind2
#     ele2
# end

# puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
# puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


# def abbreviate_sentence(sentence)
#     new = ""
#     vowels = ["a", "e", "i", "o", "u"]

#     sentence.split(" ").each do |word|
#         if word.length > 4
#             word.each_char { |char| new += char if not vowels.include?(char)}
#         else
#            new += word 
#         end
#         new += " "
#     end

#     new
# end

# puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# def format_name(name)
#     parts = name.split(" ")
#     new_parts = []

#     parts.each { |part| new_parts << part[0].upcase + part[1..-1].downcase}

#     new_parts.join(" ")
# end

# puts format_name("chase WILSON") # => "Chase Wilson"
# puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

# def is_valid_name(string)
#     arr = string.split(" ")
#     return false if arr.length < 2

#     arr.each do |part|
#         part.each_char.with_index do |c, i|
#             return false if !(part[0] == part[0].upcase)
#             return false if !(part[1..-1] == part[1..-1].downcase)
#         end
#     end
#     true
# end

# puts is_valid_name("Kush Patel")       # => true
# puts is_valid_name("Daniel")           # => false
# puts is_valid_name("Robert Downey Jr") # => true
# puts is_valid_name("ROBERT DOWNEY JR") # => false

# def is_valid_email(str)
#     parts = str.split("@")
#     nums = "0123456789"

#     return false if parts.length != 2

#     parts[0].each_char do |char|
#         return false if char != char.downcase
#         return false if nums.include?(char)
#     end

#     second_half = parts[1].split(".")
#     return false if second_half.length != 2

#     true
# end

# puts is_valid_email("abc@xy.z")         # => true
# puts "---"
# puts is_valid_email("jdoe@gmail.com")   # => true
# puts "---"
# puts is_valid_email("jdoe@g@mail.com")  # => false
# puts "---"
# puts is_valid_email("jdoe42@gmail.com") # => false
# puts "---"
# puts is_valid_email("jdoegmail.com")    # => false
# puts "---"
# puts is_valid_email("az@email")         # => false

# def reverse_words(sentence)
#     arr = sentence.split(" ")
#     new = []

#     arr.each { |word| new << word.reverse }

#     new.join(" ")
# end

# puts reverse_words('keep coding') # => 'peek gnidoc'
# puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


def rotate_array(arr, num)
    num.times { arr.unshift(arr.pop) }
    arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts