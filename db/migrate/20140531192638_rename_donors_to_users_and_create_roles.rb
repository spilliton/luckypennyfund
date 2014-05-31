class RenameDonorsToUsersAndCreateRoles < ActiveRecord::Migration
  def change
    rename_table :donors, :users
  end
end
