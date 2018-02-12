class AddColumnPlanIdToPlanMenus < ActiveRecord::Migration[5.1]
  def change
  	add_column :plan_for_menus, :plan_id, :integer
  end
end
