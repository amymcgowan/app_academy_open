def zip(*arrays)
    length = arrays.first.length

    (0...length).map do |i|
        arrays.map { |array| array[i] }
    end
end

def prizz_proc(array, prc_1, prc_2)
    array.select do |el|
        (prc_1.call(el) || prc_2.call(el)) &&
        !(prc_1.call(el) && prc_2.call(el))
    end
end

def zany_zip(*arrays)
    # length = 0
    # arrays.each do |array|
    #     length = array.length if array.length > length
    # end

    length = arrays.map(&:length).max

    (0...length).map do |i|
        arrays.map { |array| array[i] }
    end
end

def maximum(arr, &prc)
    return nil if arr.empty?
    max = arr.first
    arr.each do |el|
        max = el if prc.call(el) >= prc.call(max)
    end
    max
end

def my_group_by(arr, &prc)
    hash = Hash.new { |k,v| hash[v] = [] }

    arr.each do |el|
        key = prc.call(el)
        hash[key] << el
    end
    hash
end

def max_tie_breaker(arr, proc, &prc)
    return nil if arr.empty?
    max = arr.first
    arr.each do |el|
        if prc.call(el) > prc.call(max)
            max = el
        elsif prc.call(el) == prc.call(max)
            max = el if proc.call(el) > proc.call(max)
        end
    end
    max
end

def silly_syllables(sent)
    words = sent.split(" ")
    new_words = words.map do |word|
        num_vowels = vowel_indices(word).length
        if num_vowels >= 2
            change_word(word)
        else
            word
        end
    end
    new_words.join(" ")
end

def change_word(word)
    indicies = vowel_indices(word)
    word[indicies.first..indicies.last]
end

def vowel_indices(word)
    vowels = "aeiou"
    indicies = []
    word.each_char.with_index do |char,i|
        indicies << i if vowels.include?(char)
    end
    indicies
end
