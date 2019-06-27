def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name, 'test')
end

greet('Prima', 'Gusta') do |param_from_yield|
  puts "Hello, #{param_from_yield}"
end

greet('Sonia', 'Monteiro') do |param_from_yield|
  puts "Bonjour, #{param_from_yield}"
end

greet('Guido', 'Caldara') do |param_from_yield|
  puts "Pagi!, #{param_from_yield}"
end
