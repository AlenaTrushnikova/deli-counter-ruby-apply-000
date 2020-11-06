# Write your code here.

katz_deli = []
number_in_line = 0

#line Method
def line(katz_deli)
  if katz_deli.length == 0 #determine the lenth of the line
    puts "The line is currently empty."
  else
    list = "The line is currently:"
    katz_deli.each_with_index do |name, index| #each_with_index Method allows to iterate over items along with an index keeping count of the item

  if katz_deli.length == 0 #determine the lenth of the array = of the line
    puts "The line is currently empty."
  else
    list = "The line is currently:"
    katz_deli.each_with_index do |name, index| #allows to iterate over items along with an index keeping count of the item

    list += " #{index.to_i+1}. #{name}" #Remember that people like to count from 1, not from 0 like computers
    end
    puts "#{list}"
  end
end

#take_a_number Method
def take_a_number(katz_deli)
  number_in_line += 1
  katz_deli.push(number_in_line) 
  puts "Welcome, you are #{number_in_line} in line."
 
end

#now_serving Method
def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift #remove the FIRST person from the FRONT of the line
  end  
end
