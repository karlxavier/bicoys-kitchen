class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :weekday_id
      t.integer :plan_status_id
      t.date :plan_for_date

      t.timestamps
    end
  end
end
