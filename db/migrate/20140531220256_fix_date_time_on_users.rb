class FixDateTimeOnUsers < ActiveRecord::Migration
  def change
    remove_column :users, :dob, :datetime
    add_column :users, :dob, :date
  end
end
