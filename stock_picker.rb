puts "Please enter the prices by day"
prices_array = gets.chomp.split(",")
p prices_array
prices_array = prices_array.map{|number| number.to_i}
p prices_array
  

