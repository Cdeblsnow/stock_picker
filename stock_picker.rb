puts "Please enter the prices by day"
prices_array = gets.chomp.split(",")
prices_array = prices_array.map{|number| number.to_i}

def stock_prices(array)

  profit = 0
  max_profit = 0
  best_combination = []
  highest_index = 0
  lowest_index = 0

  array.length.times do |counter|
    lowest_buy = array.sort[counter]
    lowest_index = array.find_index(lowest_buy)

    array.length.times do |iterator|
      highest_sell = array.sort[-counter]
      highest_index = array.find_index(highest_sell)
      profit = highest_sell - lowest_buy 
      max_profit = profit if  profit > max_profit &&  lowest_index < highest_index 
    end 
  end
  best_combination = [lowest_index,highest_index]
  p "The best combination is #{best_combination} for a profit of #{max_profit}"
end 

