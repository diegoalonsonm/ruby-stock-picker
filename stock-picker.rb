def stock_picker(prices)
  prices.each_with_index.to_a.combination(2).max_by { |buy, sell| sell[0] - buy[0] }.map{ |_, day| day }
end

p stock_picker([0,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,1,10])