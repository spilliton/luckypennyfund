class AddContributionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contribution, :string
  end
end
