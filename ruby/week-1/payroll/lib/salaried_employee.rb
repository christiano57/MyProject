class SalariedEmployee < Employee
    def initialize(name, email, year_salary)
        super(name, email)
        @year_salary = year_salary
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
    end
end