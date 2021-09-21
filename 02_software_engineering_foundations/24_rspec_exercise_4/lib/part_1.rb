def my_reject(arr, &prc)
    arr.select { |el| !prc.call(el) }
end

def my_one?(arr, &prc)
    count = 0
    arr.each { |el| count += 1 if prc.call(el) }
    count == 1

    # arr.count(&prc) == 1
end

def hash_select(hash, &prc)
    new_hash = {}
    hash.each { |k, v| new_hash[k] = v if prc.call(k,v) }
    new_hash
end

def xor_select(arr, prc_1, prc_2)
    arr.select do |el|
        (prc_1.call(el) || prc_2.call(el)) && !(prc_1.call(el) && prc_2.call(el))
    end
end

def proc_count(val, procs)
    procs.count { |proc| proc.call(val) }
end