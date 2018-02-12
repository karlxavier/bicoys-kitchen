class CreatePlanMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_meals do |t|
      t.integer :plan_id
      t.integer :meal_type_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
