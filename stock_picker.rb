def stock_picker(prices)
  profit = 0
  result = [0, 1]

  prices.each_with_index do |buy_elem, buy_index|
    prices.each_with_index do |sell_elem, sell_index|
        if buy_index >= sell_index
          next
        elsif sell_elem - buy_elem  >= profit 
            profit = sell_elem - buy_elem
            result[0] = buy_index
            result[1] = sell_index
        end
    end
  end
result
end


p stock_picker([5,2,4,1,7]) 