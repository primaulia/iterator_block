musicians = ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Mason", "Prima", "Sonia"]

# simple iteration
musicians.each do |musician|
  names_arr = musician.split(" ")
  puts "Hello Mr. #{names_arr.last}"
end

# transform array into first names array
# .each
first_names_arr = []
first_names_arr = musicians.each do |musician|
  first_names = musician.split(" ").first
  first_names_arr << first_names
end

#.map
first_names_arr = musicians.map do |musician|
  musician.split(" ").last[0]
end


puts "old array"
p musicians

puts

puts "new transformed array (just first_name)"
p first_names_arr




# .count all member name starts with "R"

# steps
# set a counter
# iterate the arr
  # compare the first letter of each name with "R"
  # if true, increase counter
  # no, do nothing
# returns the final count

counter = 0

musicians.each do |musician|
  first_letter = musician[0]

  if first_letter == 'R'
    counter += 1
  end
end

puts counter

counter = musicians.count do |musician|
  first_letter = musician[0]
  first_letter == 'R'
end

puts counter

# .each = [] => nil
# .map = [] => Array
# .count = [] => Integer
# .select = [] => filtered out when condition is false []
# .select = [] => filtered out when condition is true []

all_musicians_with_R = musicians.select do |musician|
  first_letter = musician[0]
  first_letter == 'R'
end

p all_musicians_with_R

no_musicians_with_R = musicians.reject do |musician|
  first_letter = musician[0]
  first_letter == 'R'
end

p no_musicians_with_R

# Filter based on character length
# Assumption, only shows names that has 5 characters

# iterate the array
# look into each names length
# if length <= 5
  # reject
# else
  # put that into a new array
# return the new array

shortnames = []

musicians.each do |musician|
  if musician.length <= 5
    shortnames << musician
  end
end

p shortnames


shortnames = musicians.select do |musician|
  musician.length <= 5
end

p shortnames
