class MultiPaymentEmployee < Employee
	attr_reader :name,:email
    def initialize(name, email, year_salary, overtime_rate, hours_worked)
        super(name, email)
        @year_salary = year_salary
        @overtime_rate = overtime_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	if @hours_worked > 40
    		@overtime_rate * (@hours_worked - 40) + (@year_salary / 52)
    	else @year_salary / 52
    end
end
end
