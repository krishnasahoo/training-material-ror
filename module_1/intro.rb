# 1. Human-readable syntax
5.times do
  puts "Welcome to Ruby on Rails!"
end

# 2. Everything is an object (calling methods directly on numbers and strings)
puts 42.class          # Outputs: Integer
puts "hello".upcase    # Outputs: HELLO
puts -15.abs           # Outputs: 15
puts nil.nil?          # Outputs: true

# 3. Inspecting available methods on an object
puts "rails".methods.first(5)