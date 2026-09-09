# Task 1
range_array = (10...16).to_a  # => [10, 11, 12, 13, 14, 15]

# Task 2
numbers = [10, 20, 30, 40, 50]
filtered = numbers.select { |n| n > 25 } # => [30, 40, 50]

# Task 3 & 4
course = {
  title: "Ruby on Rails",
  duration: 16
}
course[:level] = "Beginner"

puts course
# => {:title=>"Ruby on Rails", :duration=>16, :level=>"Beginner"}