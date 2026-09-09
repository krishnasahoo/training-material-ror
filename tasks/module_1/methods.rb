# Task 1 & 2
def calculate_tax(amount, tax_rate = 0.05)
  amount * tax_rate
end

def discount_eligible?(total_spend)
  total_spend >= 100
end

# Task 4
puts calculate_tax(100)       # => 5.0
puts calculate_tax(100, 0.1)  # => 10.0
puts discount_eligible?(150)  # => true
puts discount_eligible?(80)   # => false