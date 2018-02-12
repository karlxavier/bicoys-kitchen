class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :plan_id
      t.integer :plan_meal_id
      t.integer :menu_id
      t.decimal :unit_price,        precision: 12, scale: 3
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
