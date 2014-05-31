class AddProfileInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :locality, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
    add_column :users, :gender, :string
    add_column :users, :dob, :datetime
  end
end
