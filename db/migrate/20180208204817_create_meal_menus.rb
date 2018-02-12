class CreateMealMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :meal_menus do |t|
      t.integer :plan_meal_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
