class Employee < ActiveRecord::Base
    has_many :costs
    has_many :activities, through: :costs

    def self.list_unions
        list = []
        Employee.all.each {|emp| list << emp.labor_union}
        list.uniq
    end

    def hours_worked
        self.costs.sum {|cost| cost.category=="Labor" && cost.employee_id==self.id ? cost.total_cost/self.wage_rate : 0}
    end
end