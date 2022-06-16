def bublle_sort(array)
   n = array.length - 1
   swapped = true
    while swapped 
        swapped = false
       for i in 0..(n-1)
            if array[i] > array[i+1]
               array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end    
    end
    p array
end
bublle_sort([1,2,73,5,6,7])
