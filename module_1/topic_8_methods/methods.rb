# 1. Defining a method with default parameters & implicit return
def greet(name = "Guest", role = "User")
  "Hello, #{name}! You are logged in as a #{role}." # Last line is implicitly returned
end

puts greet                          # Uses defaults: "Hello, Guest! You are logged in as a User."
puts greet("Alice", "Admin")        # Overrides: "Hello, Alice! You are logged in as a Admin."

# 2. Predicate Method Convention (?)
def adult?(age)
  age >= 18 # Evaluates directly to true or false
end

puts adult?(21) # => true
puts adult?(15) # => false

# 3. Explicit return for early exit guard clauses
def divide(numerator, denominator)
  return "Error: Cannot divide by zero!" if denominator == 0
  
  numerator / denominator
end

puts divide(10, 2) # => 5
puts divide(10, 0) # => "Error: Cannot divide by zero!"