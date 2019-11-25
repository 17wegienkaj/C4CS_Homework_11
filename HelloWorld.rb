require 'csv'
data = CSV.read("list.csv")
while(1)
  puts "Please enter step item that you want to see between 1 - #{data.length - 1} (#{data.length} to quit):"
  id = gets.to_i
  if id == data.length
    return
  end
  puts "#{data[id][1]}"
end