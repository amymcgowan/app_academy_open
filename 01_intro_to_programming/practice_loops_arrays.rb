# PRACTICE FOR a/A
# INTRO TO PROGRAMMING 
# -- LOOPS
# -- ARRAYS

# -------------------------------------------
# -------------------------------------------

# def count_e(word)
#     count = 0

#     i = 0
#     while i < word.length
#         if word[i] == "e"
#             count += 1
#         end

#         i +=1
#     end
#     count
# end

# puts count_e("movie") # => 1
# puts count_e("excellent") # => 3

# def count_a(word)
#     word = word.downcase
#     count = 0

#     i = 0
#     while i < word.length
#         if word[i] == "a"
#             count += 1
#         end

#         i +=1
#     end
#     count
# end

# puts count_a("application")  # => 2
# puts count_a("bike")         # => 0
# puts count_a("Arthur")       # => 1
# puts count_a("Aardvark") 


# def count_vowels(word)
#     vowels = ["a", "e", "i", "o", "u"]
#     count = 0

#     i = 0
#     while i < word.length
#         count += 1 if vowels.any?(word[i])

#         i += 1
#     end

#     count
# end

# puts count_vowels("bootcamp")  # => 3
# puts count_vowels("apple")     # => 2
# puts count_vowels("pizza")     # => 2
# puts count_vowels("computer")

# def sum_nums(max)
#     sum = 0

#     i = 1
#     while i <= max
#         sum += i
#         i += 1
#     end

#     sum
# end

# puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
# puts sum_nums(5) # => 15

# def factorial(num)
#     product = 1

#     i = 1
#     while i <= num
#         product *= i
#         i += 1
#     end

#     product
# end

# puts factorial(3) # => 6, because 1 * 2 * 3 = 6
# puts factorial(5) # => 120, 

# def reverse(word)
#     reverse = ""

#     i = word.length - 1
#     while i >= 0
#         reverse << word[i]
#         i -= 1
#     end

#     reverse
# end

# # puts reverse("cat")          # => "tac"
# # puts reverse("programming")  # => "gnimmargorp"
# # puts reverse("bootcamp")   


# def is_palindrome(word)
#     word == reverse(word)
# end

# puts is_palindrome("racecar")  # => true
# puts is_palindrome("kayak")    # => true
# puts is_palindrome("bootcamp") # => false


# def doubler(nums)
#     doubled = []

#     i = 0
#     while i < nums.length
#         doubled << nums[i] * 2
#         i += 1
#     end

#     doubled
# end

# print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
# puts
# print doubler([7, 1, 8])    # => [14, 2, 16]

# def yell(words)
#     yelled = []

#     i = 0
#     while i < words.length
#         yelled << (words[i] += "!")
#         i += 1
#     end

#     yelled
# end

# print yell(["hello", "world"]) # => ["hello!", "world!"]
# puts
# print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

# def element_times_index(nums)
#     new = []

#     i = 0
#     while i < nums.length
#         new << nums[i] *= i 
#         i += 1
#     end

#     new
# end

# print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
# puts
# print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


# def even_nums(max)
#     evens = [0]

#     i = 2
#     while i <= max
#         evens << i if i % 2 == 0
#         i += 1
#     end

#     evens
# end

# print even_nums(10) # => [0, 2, 4, 6, 8, 10]
# puts
# print even_nums(5)  # => [0, 2, 4]

# def range(min, max)
#     arr = []

#     i = min
#     while i <= max
#         arr << i
#         i += 1
#     end

#     arr
# end

# print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
# puts
# print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

# def first_half(arr)
#     half = []

#     i = 0
#     while i < arr.length / 2.0
#         half << arr[i]
#         i += 1
#     end

#     half
# end

# print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
# puts
# print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

# def factors_of(num)
#     arr = []

#     i = 1
#     while i <= num
#         arr << i if num % i == 0
#         i += 1
#     end

#     arr
# end

# print factors_of(3)   # => [1, 3]
# puts
# print factors_of(4)   # => [1, 2, 4]
# puts
# print factors_of(8)   # => [1, 2, 4, 8]
# puts
# print factors_of(9)   # => [1, 3, 9]
# puts
# print factors_of(16)  # => [1, 2, 4, 8, 16]

# def select_long_words(words)
#     long_words = []

#     i = 0
#     while i < words.length
#         long_words << words[i] if words[i].length > 4
#         i += 1
#     end

#     long_words
# end

# print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
# puts
# print select_long_words(["keep", "coding"])     # => ["coding"]

# def sum_elements(arr1, arr2)
#     new_arr = []

#     i = 0

#     while i < arr1.length
#         new_arr << arr1[i] += arr2[i]
#         i += 1
#     end

#     new_arr
# end

# print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
# puts
# print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

def fizz_buzz(max)
    arr = []

    i = 1
    while i < max
        arr << i if 
            (i % 4 == 0 && i % 6 != 0) ||
            (i % 4 != 0 && i % 6 == 0)
        i += 1  
    end

    arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]