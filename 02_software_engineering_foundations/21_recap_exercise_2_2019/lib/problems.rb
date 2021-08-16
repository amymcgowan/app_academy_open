# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
# def least_common_multiple(num_1, num_2)
#     i = 1
#     while true
#         if (num_1 * i) % num_2 == 0
#             return num_1 * i 
#         else 
#             i += 1
#         end
#     end
# end

# This is much cleaner.  Uses a range that maxes out at num*num.  And then checks
# straight up if each num is divisible by that i.  ...I had this in my mind to some
# degree, but wasn't sure how to get here... :(
def least_common_multiple(num_1, num_2)
    (1..num_1 * num_2).each do |i|
        if (num_1 * i) % num_2 == 0
            return i if i % num_1 == 0 && i % num_2 == 0 
        end
    end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    bigram_counts = Hash.new(0)

    (0...str.length - 1).each do |i|
        bigram = str[i..i + 1]
        bigram_counts[bigram] += 1
    end
    p bigram_counts
    sorted = bigram_counts.sort_by { |k, v| v }
    sorted.last[0]
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each do |key, val|
            new_hash[val] = key 
        end
        new_hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0

        self.each_with_index do |num_1, ind_1|
            self.each_with_index do |num_2, ind_2|
                count += 1 if  ind_2 > ind_1 && num_1 + num_2 == num
            end
        end
        count
    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        prc ||= Proc.new { |a, b| a <=> b }
        sorted = false
        while !sorted
            sorted = true

            (0...self.length - 1).each do |i|
                if prc.call(self[i], self[i + 1]) == 1
                    self[i], self[i + 1] = self[i + 1], self[i]
                    sorted = false
                end
            end
        end
        self
    end
end

# On at least 2 of these I was very stuck...turns out all I needed was to the call
# the array/hash/whatever at the end.  duh.
