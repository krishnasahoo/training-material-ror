# 1. Standard Begin / Rescue / Else / Ensure structure
def safe_divide(a, b)
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "[LOG ERROR] Caught division by zero: #{e.message}"
    result = nil
  else
    puts "[SUCCESS] Division executed smoothly without errors!"
  ensure
    puts "[CLEANUP] Division operation completed."
  end

  result
end

puts safe_divide(10, 2)  # Success path
puts "-" * 30
puts safe_divide(10, 0)  # Error path

# 2. Raising Custom Errors & Implicit Method-level Rescue
def process_age(age)
  raise ArgumentError, "Age cannot be negative!" if age < 0
  
  "User age verified: #{age}"
rescue ArgumentError => e
  "[RESCUED] Invalid input provided: #{e.message}"
end

puts process_age(25)   # => User age verified: 25
puts process_age(-5)   # => [RESCUED] Invalid input provided: Age cannot be negative!