def stock_picker(prices)
  max = 0
  for i in 0...prices.length do
      for y in (i+1)...prices.length do
        current = prices[y]-prices[i]
        if current > max
          buy = prices[i]
          sell = prices[y]
          max = current
        end
      end
  end
  puts "buy = " + "#{buy}" + ", sell = " + "#{sell}"
  puts "[#{prices.index(buy)}," + "#{prices.index(sell)}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])
