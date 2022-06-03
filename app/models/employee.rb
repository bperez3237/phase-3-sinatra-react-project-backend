class Employee < ActiveRecord::Base
    has_many :costs
    has_many :activities, through: :costs

end