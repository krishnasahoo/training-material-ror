# 1. Defining a Module (Skill Set / Toolbox)
module Printable
  def print_summary
    "=== SUMMARY [#{Time.now.strftime('%Y-%m-%d')}] ===\n#{details}"
  end
end

# 2. Including Module into Unrelated Classes (Mixin)
class Invoice
  include Printable # Injects print_summary as an instance method

  def details
    "Invoice #1001: Amount Due $250.00"
  end
end

class StudentReport
  include Printable

  def details
    "Student: Alice | Grade: A+"
  end
end

inv = Invoice.new
puts inv.print_summary

report = StudentReport.new
puts report.print_summary

# 3. Namespacing (Avoiding Naming Collisions)
module Admin
  class Dashboard
    def display
      "Rendering Admin Dashboard"
    end
  end
end

module UserPortal
  class Dashboard
    def display
      "Rendering User Portal Dashboard"
    end
  end
end

admin_db = Admin::Dashboard.new
user_db  = UserPortal::Dashboard.new

puts admin_db.display # => Rendering Admin Dashboard
puts user_db.display  # => Rendering User Portal Dashboard