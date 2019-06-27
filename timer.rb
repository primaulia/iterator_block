def timer
  start_time = Time.now

  yield

  puts "Elapsed time: #{Time.now - start_time}s"
end

timer() do
  puts "I'm doing something slow..."
  sleep(4)
  puts "I'm done :)"
end

timer() do
  puts "I'm doing something fast..."
  sleep(2)
  puts "I'm done :)"
end























