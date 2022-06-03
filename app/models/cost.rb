class Cost < ActiveRecord::Base
    belongs_to :employee
    belongs_to :activity

end