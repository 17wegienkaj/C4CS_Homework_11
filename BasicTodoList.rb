require 'csv'

class String
  def numeric?
    true if Float(self) != nil rescue false
  end
end

data = CSV.read("list.csv")
while(1)
  puts "Please enter step item that you want to see between 1 - #{data.length - 1} or type 'add' to add tasks (#{data.length} to quit):"
  input1 = gets.chomp
  if input1.numeric?
    id = input1.to_i
    if id == data.length
      return
    end
    puts data[id]
  else
    input2 = input1
    if input2 == "add"
      puts "Please enter the position and task description in this form: (#, desc.)"
      line = gets.chomp
      lineSplit = line.split(",")
      data.insert(lineSplit[0].to_i, lineSplit[1])
    end
  end
end
