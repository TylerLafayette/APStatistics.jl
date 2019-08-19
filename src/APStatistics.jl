module APStatistics

function frequencytable(array::AbstractArray, orderbykeys = false)
    keys = unique(array)
    frequencies = [[i, count(x->x == i, array)] for i in keys]
    sort!(frequencies, by = x->x[2])
    if orderbykeys
        sort!(frequencies, by = x->x[1])
    end

    println("ITEM | COUNT")
    for item in reverse(frequencies)
        println("$(item[1]) | $(item[2])")
    end
end
end # module
