# def get_double_age(hash)
#     hash["age"] * 2
# end

# puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
# puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46

# def get_full_name(hash)
#     hash["first"] + " " + hash["last"] + ", the " + hash["title"]
# end

# hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
# puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

# hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
# puts get_full_name(hash2) # => "Fido McDog, the Loyal"

# def word_lengths(sent)
#     hash = Hash.new(0)

#     sent.split.each { |word| hash[word] = word.length }

#     hash
# end

# puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
# puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


# def retrieve_values(hash1, hash2, key)
#     array = []

#     array << hash1[key]
#     array << hash2[key]

#     array
# end

# dog1 = {"name"=>"Fido", "color"=>"brown"}
# dog2 = {"name"=>"Spot", "color"=> "white"}
# print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
# puts
# print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
# puts

# def cat_builder(name_in, color_in, age_in)
#     { "name" => name_in, "color" => color_in, "age" => age_in }
# end

# print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
# puts

# print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
# puts


# def ae_count(str)
#     counter = Hash.new(0)

#    str.each_char do |char|
#         counter["a"] += 1 if char == "a"
#         counter["e"] += 1 if char == "e"
#         i += 1
#     end

#     counter
# end

# puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
# puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}


# def element_count(arr)
#     counter = Hash.new(0)

#     arr.each { |el| counter[el] += 1 }
#     counter
# end

# puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
# puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


# def select_upcase_keys(hash)
#     new = Hash.new()

#     hash.each do |k, v|
#         new[k] = v if k == k.upcase
#     end

#     new
# end

# print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
# puts

# print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
# puts

# def hand_score(hand)
#     points = {"A" => 4, "K" => 3, "Q" => 2, "J" => 1}
#     score = 0

#     hand.upcase.each_char { |card| score += points[card] }

#     score
# end

# puts hand_score("AQAJ") #=> 11
# puts hand_score("jJka") #=> 9

# def frequent_letters(str)
#     counter = Hash.new(0)

#     str.each_char { |char| counter[char] += 1 }
    
#     arr = []
#     counter.each { |k, v| arr << k if v > 2 }
    
#     arr
# end

# print frequent_letters('mississippi') #=> ["i", "s"]
# puts
# print frequent_letters('bootcamp') #=> []
# puts

# def hash_to_pairs(hash)
#     arr = []

#     hash.each { |k, v| arr << [k, v] }
#     arr
# end

# print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
# puts


# print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
# puts

# def unique_elements(arr)
#     eles = Hash.new(0)

#     arr.each { |el| eles[el] = true }
    
#     eles.keys
# end

# print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
# puts

def element_replace(arr, hash)
    new_arr = []

    arr.each do |el|
        if hash.has_key?(el)
            new_arr << hash[el]
        else 
            new_arr << el
        end
    end

    new_arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts