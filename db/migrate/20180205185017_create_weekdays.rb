class CreateWeekdays < ActiveRecord::Migration[5.1]
  def change
    create_table :weekdays do |t|
      t.string :name

      t.timestamps
    end
  end
end
