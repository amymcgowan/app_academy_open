# def map_by_name(arr)
#     arr.map { |hash| hash["name"] }
# end

# pets = [
#   {"type"=>"dog", "name"=>"Rolo"},
#   {"type"=>"cat", "name"=>"Sunny"},
#   {"type"=>"rat", "name"=>"Saki"},
#   {"type"=>"dog", "name"=>"Finn"},
#   {"type"=>"cat", "name"=>"Buffy"}
# ]
# print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
# puts

# countries = [
#  {"name"=>"Japan", "continent"=>"Asia"},
#  {"name"=>"Hungary", "continent"=>"Europe"},
#  {"name"=>"Kenya", "continent"=>"Africa"},
# ]
# print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
# puts

# def map_by_key(arr, key_str)

#     arr.map { |hash| hash[key_str] }

# end

# locations = [
#   {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
#   {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
#   {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
# ]

# print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
# puts
# print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
# puts

# def yell_sentence(sent)

#     sent.split(" ").map { |word| word.upcase + "!" }.join(" ")
# end

# puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"

# def whisper_words

# end

# def o_words

# end

# def last_index

# end

# def most_vowels

# end

# def prime

# end

# def pick_primes

# end

# def greatest_factor_array

# end

# def perfect_square

# end

# def triple_sentence

# end

# def summation_sequence

# end

# def fibonacci

# end

# def caesar_cipher

# end

# def vowel_cipher

# end

# def double_letter_count(str)
#     count = 0
#     str.each_char.with_index do |char, i|
#         count +=1 if char == str[i + 1]
#     end
#     count
# end

# puts double_letter_count("the jeep rolled down the hill") #=> 3
# puts double_letter_count("bootcamp") #=> 1

# def adjacent_sum

# end

# def pyramid_sum

# end

# def all_else_equal

# end

# def anagrams

# end

# def consonant_cancel(sent)
#     words = sent.split
#     new_words = words.map { |word| remove_first_consonant(word) }
#     new_words.join(" ")
# end

# def remove_first_consonant(word)
#     vowels = "aeiou"
#     word.each_char.with_index do |char, i|
#         return word[i..-1] if vowels.include?(char)
#     end
# end

# puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
# puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

# def same_char_collapse(str)
#     continue = true

#     while continue
#         chars = str.split("")
#         continue = false

#         chars.each.with_index do |char, i|
#             if chars[i] == chars[i + 1]
#                 chars[i] = ""
#                 chars[i + 1] = ""
#                 continue = true
#             end
#         end

#         new_str = chars.join("")
#     end
#     new_str
# end

# puts same_char_collapse("zzzxaaxy")   #=> "zy"
# # because zzzxaaxy -> zxaaxy -> zxxy -> zy


# puts same_char_collapse("uqrssrqvtt") #=> "uv"
# # because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv

# ???