#Stock picker takes in an array of stock prices and tries to find a pair of days (day one = buy, day two = sell) that will give you the best profit
#The array will always have a length of seven
#You must buy before you can sell

def stock_picker(weekly_prices)
  #Making an empty array for the best prices (holds day values)
  best_days = []
  #best_profit holds the best profit of all; used for comparison later on
  best_profit = 0
  buy = 0
  while buy < weekly_prices.length
    #sell must be at least one day later than buy
    sell = buy + 1
    while sell < weekly_prices.length
      profit = weekly_prices[buy]-weekly_prices[sell]
      if profit > best_profit
        best_profit = profit
        best_days[0..1] = [buy+1, sell+1]
      end #end of if statement
      sell += 1
    end #end of sell loop
    buy += 1
  end #end of buy loop
  return "Buy on day #{best_days[0]} and sell on day #{best_days[1]} for a profit of $#{best_profit}"
end

stocks = [4,1,2,3,2,6,5]

puts stock_picker(stocks)
