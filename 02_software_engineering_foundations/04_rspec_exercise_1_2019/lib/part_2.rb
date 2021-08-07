def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end

def vowel_counts(str)
    v_count = Hash.new(0)
    vowels = "aeiou"

    str.downcase.each_char do |char|
        if vowels.include?(char)
            v_count[char] += 1
        end
    end
    v_count
end

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"   # can do ('a'..'z').to_a 

    new_message = ""
    
    message.each_char do |char|
        if alphabet.include?(char)
            old_ind = alphabet.index(char)
            new_ind = old_ind + n
            new_message += alphabet[new_ind % 26]
        else
            new_message += char
        end
    end
    
    return new_message
end