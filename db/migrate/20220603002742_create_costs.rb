class CreateCosts < ActiveRecord::Migration[6.1]
  def change
    create_table :costs do |t|
      t.string :name
      t.float :total_cost
      t.string :category
      t.integer :employee_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
