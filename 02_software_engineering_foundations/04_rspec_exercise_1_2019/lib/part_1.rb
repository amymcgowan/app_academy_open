def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    arr = str.split
    
    new = (0..arr.length - 1).map do |i|
        if i.even? || i == 0
            arr[i].upcase
        else
            arr[i].downcase
        end
    end
    new.join(" ")
end