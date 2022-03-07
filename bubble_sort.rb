def bubble_sort(array)
    loop do
        array.each_index do |index|
            unless index == array.length - 1
                if array[index] > array[index + 1]
                    array[index], array[index + 1] = array[index + 1], array[index]
                end
            end 
        end
        if array.each_cons(2).all? { |a, b| (a <=> b) <= 0}
            break
        end
    end
    return array
end

p bubble_sort([4, 3, 1, 1, 17, 83, 23, 0, 5, 100])