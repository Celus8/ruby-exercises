def stock_picker(days)
  max_difference = 0
  days_to_buy = [nil,nil]
  days.each_with_index do |daily_price, i|
    for index in (i..(days.length - 1))
      if days[index] - days[i] > max_difference
        days_to_buy[0] = i
        days_to_buy[1] = index
        max_difference = days[index] - days[i]
      end
    end
  end
  days_to_buy
end

p stock_picker([10, 2, 4, 3, 1])


