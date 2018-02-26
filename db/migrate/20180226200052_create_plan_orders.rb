class CreatePlanOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_orders do |t|
      t.integer :order_id
      t.integer :weekday_id

      t.timestamps
    end
  end
end
