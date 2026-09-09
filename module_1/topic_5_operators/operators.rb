# 1. Operators are methods under the hood
puts 5 + 3       # Outputs: 8
puts 5.+(3)      # Outputs: 8 (Identical!)

# 2. Integer Division vs Float Division
puts 10 / 3      # Outputs: 3 (Truncates decimal)
puts 10.0 / 3    # Outputs: 3.3333333333333335
puts 10 % 3      # Outputs: 1 (Remainder)

# 3. The Spaceship Operator (<=>)
puts 5 <=> 10    # Outputs: -1 (Left is smaller)
puts 5 <=> 5     # Outputs:  0 (Equal)
puts 10 <=> 5    # Outputs:  1 (Left is larger)

# 4. Logical Operators & Short-circuiting
has_ticket = true
is_vip = false

puts has_ticket && is_vip  # Outputs: false
puts has_ticket || is_vip  # Outputs: true

# 5. Compound Assignment
score = 50
score += 10    # Equivalent to: score = score + 10 (score is now 60)
puts score