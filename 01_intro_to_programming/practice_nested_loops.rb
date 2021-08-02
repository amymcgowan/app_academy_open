# def combinations(arr)
#     pairs = []

#     arr.each_with_index do |ele1, ind1|
#         arr.each_with_index do |ele2, ind2|
#             pairs << [ele1, ele2] if ind2 > ind1
#         end
#     end

#     pairs
# end

# print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
# puts

# print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
# puts

# def opposite_count(arr)
#     count = 0

#     arr.each_with_index do |ele1, ind1|
#         arr.each_with_index do |ele2, ind2|
#             count += 1 if 
#                 (ind2 > ind1) &&
#                 (ele1 + ele2 == 0)
#         end
#     end

#     count
# end

# puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
# puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

# def two_d_sum(arr)
#     sum = 0
#     arr.flatten.each { |part| sum += part }
#     sum
# end

# array_1 = [
#   [4, 5],
#   [1, 3, 7, 1]
# ]
# puts two_d_sum(array_1)    # => 21

# array_2 = [
#   [3, 3],
#   [2],
#   [2, 5]
# ]
# puts two_d_sum(array_2)    # => 15

# def two_d_translate(arr)
#     new = []

#     arr.each do |subarray|
#         word = subarray[0]
#         num = subarray[1]

#         num.times { new << word }
#     end
#     new
# end

# arr_1 = [
#   ['boot', 3],
#   ['camp', 2],
#   ['program', 0]
# ]

# print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
# puts

# arr_2 = [
#   ['red', 1],
#   ['blue', 4]
# ]

# print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
# puts

# def array_translate(arr)
#     str = ""

#     i = 0
#     while i < arr.length
#         ele = arr[i]
#         num = arr[i + 1]
#         num.times { str += ele }
#         i += 2
#     end

#     str
# end

# print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
# puts

# print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
# puts

def pig_latin_word(word)
    new_word = ""

    if is_vowel?(word[0])
        return new_word += (word + "yay")
    else
        word.each_char.with_index do |char, i|
            if is_vowel?(char)
                return new_word += word[i..-1] + word[0...i] + "ay"
            end
        end
    end
end

def is_vowel?(letter)
    vowel = "aeiou"
    vowel.include?(letter)
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"