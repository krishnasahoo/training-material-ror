# 1. Traditional While Loop (Manual counter)
counter = 1
while counter <= 3
  puts "While loop count: #{counter}"
  counter += 1
end

# 2. Infinite Loop with Break and Next
i = 0
loop do
  i += 1
  next if i == 2 # Skip execution when i is 2
  puts "Loop iteration: #{i}"
  break if i >= 4
end

# 3. Idiomatic Ruby Iterators (.times and .upto)
3.times do |n|
  puts "Times iterator: Index #{n}" # Zero-indexed
end

1.upto(3) do |num|
  puts "Upto iterator: Step #{num}"
end

# 4. Collection Iteration (.each)
frameworks = ["Rails", "Sinatra", "Hanami"]
frameworks.each do |framework|
  puts "Learning #{framework}!"
end