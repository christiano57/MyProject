class SalariedEmployee < Employee
	attr_reader :name,:email
    def initialize(name, email, year_salary)
        super(name, email)
        @year_salary = year_salary
    end

    def calculate_salary
      @year_salary / 52
    end
end