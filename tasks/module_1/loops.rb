# Task 1
4.times { puts "Ruby is awesome!" }

# Task 2
1.upto(10) do |number|
  next if number.even?
  puts "Odd number: #{number}"
end

# Task 3
count = 5
while count > 0
  puts "Countdown: #{count}"
  count -= 1
end
puts "Liftoff!"