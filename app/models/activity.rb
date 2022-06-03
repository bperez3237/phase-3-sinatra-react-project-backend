class Activity < ActiveRecord::Base
    has_many :costs
    has_many :employees, through: :costs

end