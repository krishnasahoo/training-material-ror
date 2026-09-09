class Book
  def read
    "Reading a great book!"
  end
end

ruby_book = Book.new
rails_book = Book.new

puts ruby_book.read
puts "Ruby Book ID: #{ruby_book.object_id}"
puts "Rails Book ID: #{rails_book.object_id}"