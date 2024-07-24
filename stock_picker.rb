puts "Please enter the prices by day"
prices_array = gets.chomp.split(",")
prices_array = prices_array.map{|number| number.to_i}

def stock_prices(array)

  profit = 0
  lowest_buy = array.min 
  highest_sell = array.max
  best_combination = []

  array.length.times do |counter|
    highest_sell = array.sort(-counter)
    
    if array.find_index(highest_sell) > array.find_index(lowest_buy)
      profit = highest_sell - lowest_buy
      best_combination = [array.find_index(lowest_buy), array.find_index(highest_sell)]
      p "#{best_combination} for a profit of #{profit}"
      break
        
    elsif array.find_index(highest_sell) < array.find_index(lowest_buy)
      p "There is not best day to sell"
    
    end
  end 
end 

