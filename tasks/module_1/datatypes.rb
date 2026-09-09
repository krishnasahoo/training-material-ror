product_name = "Laptop"
price = 1200.50
status = :in_stock

puts "The product #{product_name} costs $#{price}."

converted_price = price.to_i
puts converted_price        # => 1200
puts converted_price.class  # => Integer