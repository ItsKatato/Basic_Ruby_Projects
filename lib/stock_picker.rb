def stock_picker(days)
    min = 0
    max = 0
    days.each do |day|
        unless min === 0
            if max === 0
                if day <= min && !(days.index(day) === (days.length - 1))
                    min = day 
                end
            elsif day <= min && !(days.index(day) === (days.length - 1)) && days.index(day) < days.index(max)
                min = day 
            end
        else 
            min = day
        end
        unless max === 0
            if day >= max && !(days.index(day) === 0) && days.index(day) > days.index(min)
                max = day 
            end
        else 
            if !(days.index(day) === 0)
                max = day
            end
        end
    end 
    best_days = [days.index(min),days.index(max)]

end 

p stock_picker([17,3,6,9,15,8,6,1,10])

