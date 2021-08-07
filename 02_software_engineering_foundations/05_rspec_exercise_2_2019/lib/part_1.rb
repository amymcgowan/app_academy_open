# def partition(arr, num)
#     new_array = Array.new(2) {Array.new()}
    
#     arr.each do |ele|
#         if ele < num
#             new_array[0] << ele
#         else
#             new_array[1] << ele
#         end
#     end
#     new_array
# end

# I found this one in the walkthrough.  This is pretty much what I originally
# had, but I was formatting the final structure of the 2D array wrong.. I
# had done [[less], [more]]...I did too many brackets.  I think that's all
# I did incorrectly.

def partition(arr, num)
    less = []
    more = []

    arr.each do |ele|
        if ele < num
            less << ele
        else
            more << ele
        end
    end
    [less, more]
end

# def merge(hash_1, hash_2)
#     hash_1.merge(hash_2)
# end

# In reading documention, I found the above merge method that solved the problem
# in one swoop...but the walkthrough spells it out, so I'll try the long way too

def merge(hash_1, hash_2)
    new_hash = {}

    hash_1.each { |k, v| new_hash[k] = v }
    hash_2.each { |k, v| new_hash[k] = v }

    new_hash
end

def censor(sentence, array)
    censored = sentence.split.map do |word|
        if array.include?(word.downcase)
            starred_word(word)
        else
            word
        end
    end
    censored.join(" ")
end

def starred_word(word)
    vowels = "aeiou"
    starred = ""

    word.each_char do |char|
        if vowels.include?(char.downcase)
            starred += "*"
        else
            starred += char
        end
    end
    starred
end

# I did such a good job on censor! :D

def power_of_two?(num)
    product = 1

    while product < num
        product *= 2
    end

    product == num
end

# This one above was tricky...I tried to overcomplicate it.  Mostly I think I
# went down an overcomplicatd path at first because I wasn't clear on the math.

