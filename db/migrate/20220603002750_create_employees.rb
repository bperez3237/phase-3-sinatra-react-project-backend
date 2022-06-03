class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :wage_rate
      t.string :labor_union
    end
  end
end
