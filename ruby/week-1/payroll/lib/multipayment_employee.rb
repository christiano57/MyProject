class MultiPaymentEmployee < Employee
    def initialize(name, email, year_salary, overtime_rate, hours_worked)
        super(name, email)
        @year_salary = year_salary
        @overtime_rate = overtime_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
    end
end