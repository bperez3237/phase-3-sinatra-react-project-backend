class AddActivityOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :order, :integer
  end
end
