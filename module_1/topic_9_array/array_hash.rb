# 1. Ranges and Arrays
inclusive_range = (1..5).to_a   # => [1, 2, 3, 4, 5]
exclusive_range = (1...5).to_a  # => [1, 2, 3, 4]

frameworks = ["Rails", "Sinatra"]
frameworks << "Hanami"           # Appends "Hanami" to end of array

puts frameworks[0]               # => "Rails"
puts frameworks.last             # => "Hanami"

# 2. Array Transformation (.map and .select)
numbers = [1, 2, 3, 4, 5]
doubled = numbers.map { |n| n * 2 }        # => [2, 4, 6, 8, 10]
evens   = numbers.select { |n| n.even? }    # => [2, 4]

# 3. Modern Hash Syntax (Symbol Keys)
user = {
  name: "Alice",
  role: "Instructor",
  active: true
}

puts user[:name]                 # => "Alice" (Accessed via symbol)
puts user[:email]                # => nil (Safe non-existent key lookup)

# 4. Iterating over a Hash
user.each do |key, value|
  puts "#{key.capitalize}: #{value}"
end