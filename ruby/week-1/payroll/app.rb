require_relative("lib/employee.rb")
require_relative("lib/hourly.rb")
require_relative("lib/multipayment_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
christian = HourlyEmployee.new('Christian', 'starcraft4life@blizzard.com', 15, 35)
matt = HourlyEmployee.new('Matt', 'mattsmazda@gmail.com', 15, 35)

employees = [josh, nizar, ted, christian, matt]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(josh)
