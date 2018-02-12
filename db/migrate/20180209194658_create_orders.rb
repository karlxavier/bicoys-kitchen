class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal,        precision: 12, scale: 3
      t.decimal :total,        precision: 12, scale: 3
      t.integer :order_status_id
      t.integer :user_id

      t.timestamps
    end
  end
end
