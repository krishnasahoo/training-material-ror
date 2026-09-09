# 1. Standard If / Elsif / Else
role = "admin"

if role == "admin"
  puts "Access granted: Full Control"
elsif role == "editor"
  puts "Access granted: Edit Content"
else
  puts "Access granted: Read Only"
end

# 2. Unless & Statement Modifiers
logged_in = false

# Inline conditional (Statement modifier)
puts "Please log in to continue." unless logged_in

# 3. Case / When with Ranges (Uses === under the hood)
score = 95

grade = case score
        when 90..100 then "A"
        when 80..89  then "B"
        when 70..79  then "C"
        else "F"
        end

puts "Student Grade: #{grade}"

# 4. Truthiness Trap Demonstration
puts "Zero is TRUTHY in Ruby!" if 0

