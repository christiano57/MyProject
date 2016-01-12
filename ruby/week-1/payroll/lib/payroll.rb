class Payroll < Employee
    attr_reader :name,:email
    def initialize(employees)
        super(name, email)
        @employees = employees
    end

   

  def pay_employees
  	total = @employees.map do | employee |
  		(employee.calculate_salary * 0.82).round(2)
  	end
    puts total
  	puts total.reduce(:+).round(2)
end
  	def notify_employee(employee)
      
      puts "#{employee.email}: #{employee.name}, your payroll has been deposited"
     end 
  end
