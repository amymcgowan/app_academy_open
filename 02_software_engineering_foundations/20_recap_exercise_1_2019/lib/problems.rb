# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
    all_pairs = []
    words.each_with_index do | word_1, ind_1 |
        words.each_with_index do | word_2, ind_2 |
            if ind_2 > ind_1
                all_pairs << [ word_1, word_2 ]
            end
        end
    end

    all_vowels = []
    vowels = ["a", "e", "i", "o", "u"]
    all_pairs.each do |pair|
        if vowels.all? { |vowel| pair.join(" ").include?(vowel) }
            all_vowels << pair.join(" ")
        end
    end

    all_vowels
end

# p all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])

# I got it all on my own!  It's a little longer and has a couple more steps than
# solution walkthrough, but I'm okay with that. I took the approach of making unique
# pairs and iterating through each one.  Solution video make the unique pairs part
# a condition at the very end.  This way may not be the most concise, but I'll get there.
# I'm just proud of myself for getting it.


# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
    return false if num < 2
    (2...num).any? { |ele| num % ele == 0 }
end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
    bigrams.select { |bigram| str.include?(bigram)}
end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)
        prc ||= Proc.new { |k, v| k == v }
        
        new_hash = {}
        self.each do |k, v|
            if prc.call(k, v)
                new_hash[k] = v 
            end
        end
        new_hash
    end
end

# I was nearly there on my own.  I had the default proc correct.  I had the idea
# of the rest, but couldn't quite get it in order...and forgot that we have the double
# parameter of k,v to deal with in the block.  Made it easier once I realized that
# from the video walkthrough. Also, important to create new empty hash from the 
# beginning like the instructions imply.

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
        subs = []

        (0...self.length).each do |start_ind|
            (start_ind...self.length).each do |end_ind|
                sub = self[start_ind..end_ind]
                    subs << sub
            end
        end

        if length.nil?
            subs 
        else
            subs.select { |sub| sub.length == length }
        end
    end

    


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        alpha = ("a".."z").to_a

        new_word = ""
        self.each_char do |char|
            old_ind = alpha.index(char)
            new_ind = (old_ind + num) % 26
            new_word += alpha[new_ind]
        end
        new_word
    end
end

p "apple".caesar_cipher(1)    #=> "bqqmf"
p "bootcamp".caesar_cipher(2) #=> "dqqvecor"
p "zebra".caesar_cipher(4)

