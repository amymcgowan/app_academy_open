require "employee"

class Startup
    attr_reader :name, :salaries, :funding, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(other_startup)
        @funding > other_startup.funding
    end

    def hire(employee_name, title)
        if valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "This employee cannot be hired."
        end
    end

    def size
        @employees.length
    end
    
    def pay_employee(employee)
        pay_amount = @salaries[employee.title]

        if @funding >= pay_amount
            employee.pay(pay_amount)
            @funding -= pay_amount
        else
            raise "This employee can't be paid"
        end
    end

    def payday
        @employees.each { |emp| self.pay_employee(emp) }
    end

    def average_salary
        current_salaries = @employees.map do |employee|
            @salaries[employee.title]
        end

        current_salaries.sum / current_salaries.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(other_startup)
        @funding += other_startup.funding
        @salaries.merge!(other_startup.salaries) { |title, sal_1, sal_2| sal_1 }
        #also could do:
        # other_startup.salaries.each do |title, amount|
        #     if !@salaries.has_key?(title)
        #         @salaries[title] = amount
        #     end
        # end
        @employees += other_startup.employees
        other_startup.close
    end

end
