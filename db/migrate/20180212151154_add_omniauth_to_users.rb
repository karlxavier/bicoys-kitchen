class AddOmniauthToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
    add_column :users, :company, :string
    add_column :users, :location, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
