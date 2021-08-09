
def reverser(string, &prc)
    prc.call(string.reverse)
end

def word_changer(sentence, &prc)
    words = []

    sentence.split.each { |word| words << prc.call(word) }

    words.join(" ")
end

def greater_proc_value(number, prc_1, prc_2)
    result_1 = prc_1.call(number)
    result_2 = prc_2.call(number)
    if result_1 > result_2
        return result_1
    else
        return result_2
    end
end

def and_selector(array, prc_1, prc_2)
    array.select { |ele| prc_1.call(ele) && prc_2.call(ele) }
end

def alternating_mapper(array, prc_1, prc_2)
    
    array.map.with_index do |ele, i|
        next prc_1.call(ele) if i.even?
        prc_2.call(ele)
    end
end

# last one was tricky.  I originally kept getting 'nil' when prc_1 was called.
# I asked for help on OC and realized I had two if conditionals... Was shown
# how to use next on the one-liner and take out the if on the second.  Yay!