class RemoveAndAddColumns < ActiveRecord::Migration[5.1]
  def change
  	remove_column :plan_meals, :menu_id
  end
end
