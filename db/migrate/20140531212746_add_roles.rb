class AddRoles < ActiveRecord::Migration
  def up
    add_column :users, :admin, :boolean, default: false
    add_column :users, :superuser, :boolean, default: false
    add_index :users, :admin

    remove_column :recipients, :organization
    remove_column :recipients, :recipient_id
  end

  def down
    add_column :recipients, :organization, :boolean
    add_column :recipients, :recipient_id, :integer

    remove_index :users, :admin
    remove_column :users, :admin
    remove_column :users, :superuser
  end
end
