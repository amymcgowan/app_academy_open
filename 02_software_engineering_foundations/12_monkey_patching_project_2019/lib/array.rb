# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"
class Array
    
    # def span
    #     if self.length > 0 && self.all? { |ele| ele.is_a?(Integer)}
    #         self.max - self.min
    #     end
    # end

    # From the definition I assumed I needed to account for if the array
    # had a data type besides integers.  Now I see that's not accounted
    # for in the examples.

    def span
        return nil if self.empty?

        self.max - self.min
    end

    def average
        return nil if self.empty?

        self.sum / (self.length * 1.0)
    end

    def median
        return nil if self.empty?

        sorted = self.sort
        if self.length.odd?
            sorted[self.length / 2]
        else
            middle_1 = sorted[self.length / 2 - 1]
            middle_2 = sorted[self.length / 2]
            (middle_1 + middle_2) / 2.0
        end
    end

    def counts
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1 }
        count
    end

    def my_count(value)
        count = 0
        self.each do |ele|
            if ele == value
                count += 1
            end
        end
        count
    end

    def my_index(value)
        # or could just put 'nil' as last line of method
        return nil if !self.include?(value)

        self.each_with_index do |ele, i|
            if ele == value
                return i
            end
        end
    end

    def my_uniq
        singles = []

        self.each do |ele|
            if !singles.include?(ele)
                singles << ele
            end
        end

        singles
    end

    # OR could have created a hash and then called the keys
    # def my_uniq
    #     hash = {}
    #     self.each { |ele| hash[ele] = true}
    #     hash.keys
    # end

    def my_transpose
        new_arr = []

        (0...self.length).each do |row|
            new_row = []

            (0...self.length). each do |col|
                new_row << self[col][row]
            end
        
            new_arr << new_row
        end

        new_arr
    end
end
