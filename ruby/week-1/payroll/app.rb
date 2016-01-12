require_relative("lib/employee.rb")
require_relative("lib/hourly.rb")
require_relative("lib/multipayment_employee.rb")
require_relative("lib/salaried_employee.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
puts josh.inspect
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

puts HourlyEmployee.new("hello","email",2,40).inspect