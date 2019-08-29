# Write your code here.
katz_deli = []

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.length} in line."
end

def now_serving(line)
  serving = line.shift
  msg = serving ? "Currently serving #{serving}." : "There is nobody waiting to be served!"
  puts msg
end

def line(line)
  line = line.length == 0 ? "The line is currently empty." : stringify(line)
  puts line
end

def stringify(line)
  line_string = "The line is currently:"
  line.each_with_index {|name, i| line_string += " #{i+1}. #{name}"}
  line_string
end
