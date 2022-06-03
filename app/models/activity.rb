class Activity < ActiveRecord::Base
    has_many :costs
    has_many :employees, through: :costs

    def dollars_spent
        self.costs.sum {|cost| cost.total_cost}
    end

    def hours_spent
        self.costs.sum {|cost| cost.category=="Labor" ? cost.total_cost/cost.employee.wage_rate : 0}
    end

    def self.project_cost
        Activity.all.sum {|activity| activity.dollars_spent}
    end
end