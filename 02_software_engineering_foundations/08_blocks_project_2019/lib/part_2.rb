def all_words_capitalized?(words)
    words.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
    valids = ['.com', '.net', '.io', '.org']
    
    urls.none? do |url| 
        valids.any? { |ending| url.end_with?(ending) }
    end
end

def any_passing_students?(students)
    students.any? do |student|
        grades = student[:grades]
        grades.sum / (grades.length * 1.0) >= 75
    end
end

# on the last one, I hadn't noticed in the specs that the keys for the hashes
# were symbols rather than strings...that is what was tripping me up.  Also,
# for some reason, I was trying to find the average by dividing by 2 rather than
# by the num of eles