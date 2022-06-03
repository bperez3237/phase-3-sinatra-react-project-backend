class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :estimated_hours
      t.integer :percent_complete
      t.float :estimated_cost
    end
  end
end
