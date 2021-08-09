def my_map(array, &prc)
    new_array = []

    array.each { |ele| new_array << prc.call(ele) }

    new_array
end

def my_select(array, &prc)
    new_array = []

    array.each do |ele| 
        if prc.call(ele)    
            new_array << ele
        end
    end

    new_array
end

# not necessary to put '== true' at end of line 13

def my_count(array, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end
    count
end

def my_any?(array, &prc)

    array.each do |ele|
        if prc.call(ele) == true
            return true
        end
    end
    false
end

def my_all?(array, &prc)

    array.each do |ele|
        if prc.call(ele) == false
            return false
        end
    end
    true
end

def my_none?(array, &prc)

    array.each do |ele|
        if prc.call(ele) == true
            return false
        end
    end
    true
end