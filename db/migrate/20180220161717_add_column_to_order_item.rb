class AddColumnToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :total_price, :decimal, precision: 30, scale: 10
  end
end
