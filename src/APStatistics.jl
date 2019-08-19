module APStatistics

function frequencytable(array::AbstractArray)
    keys = unique(array)
    frequencies = [[i, count(x->x == i, array)] for i in keys]
    sort!(frequencies, by = x->x[2])

    println("ITEM | COUNT")
    for item in reverse(frequencies)
        println("$(item[1]) | $(item[2])")
    end
end
end # module
