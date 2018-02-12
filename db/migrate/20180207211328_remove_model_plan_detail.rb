class RemoveModelPlanDetail < ActiveRecord::Migration[5.1]
  def change
  	add_column :plan_fors, :plan_id, :integer
  end
end
