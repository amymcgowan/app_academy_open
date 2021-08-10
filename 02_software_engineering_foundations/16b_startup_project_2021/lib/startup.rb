require "employee"


class Startup
    attr_reader :name, :funding, :salaries, :employees
    
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(startup)
        self.funding > startup.funding
    end

    def hire(employee_name, title)
        if valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "This employeed cannot be hired"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        paycheck = @salaries[employee.title]

        if @funding > paycheck 
            employee.pay(paycheck)
            @funding -= paycheck
        else
            raise "Cannot pay employee"
        end
    end

    def payday
        @employees.each { |emp| self.pay_employee(emp) }
    end

    def average_salary
        current_salaries = @employees.map { |emp| @salaries[emp.title] }
        current_salaries.sum / current_salaries.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        @salaries.merge!(startup.salaries) { |title, sal1, sal2| sal1 }
        @employees += startup.employees
        startup.close
    end
end
