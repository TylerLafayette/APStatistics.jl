module APStatistics

function frequencytable(array::AbstractArray, orderbykeys = false)
    keys = unique(array)
    frequencies = [[i, count(x->x == i, array)] for i in keys]
    if orderbykeys
        sort!(frequencies, by = x->x[1])
    else
        sort!(frequencies, by = x->x[2])
        reverse!(frequencies)
    end

    println("ITEM | COUNT")
    for item in frequencies
        println("$(item[1]) | $(item[2])")
    end
end
end # module
