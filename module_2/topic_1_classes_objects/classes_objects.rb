# 1. Define a Class (Blueprint)
class Student
  def study
    "Studying Ruby on Rails!"
  end
end

# 2. Instantiate Objects (Building houses from the blueprint)
student1 = Student.new
student2 = Student.new

# 3. Verify class type and unique object IDs in memory
puts student1.class        # Outputs: Student
puts student1.study        # Outputs: Studying Ruby on Rails!

puts student1.object_id    # Example: 70100 (Unique memory location)
puts student2.object_id    # Example: 70110 (Different memory location)

# 4. Check instance inheritance/identity
puts student1.is_a?(Student) # Outputs: true