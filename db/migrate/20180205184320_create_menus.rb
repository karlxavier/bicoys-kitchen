class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 30, scale: 10
      t.string :image

      t.timestamps
    end
  end
end
