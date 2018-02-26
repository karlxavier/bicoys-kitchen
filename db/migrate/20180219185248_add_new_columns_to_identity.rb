class AddNewColumnsToIdentity < ActiveRecord::Migration[5.1]
  def change
    add_column :identities, :accesstoken, :string
    add_column :identities, :refreshtoken, :string
    add_column :identities, :urls, :string
    add_column :identities, :name, :string
    add_column :identities, :email, :string
  end
end
