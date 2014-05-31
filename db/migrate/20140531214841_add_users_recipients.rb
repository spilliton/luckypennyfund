class AddUsersRecipients < ActiveRecord::Migration
  def change
    create_join_table :users, :recipients do |t|
      t.index :user_id
      t.index :recipient_id
    end

    add_column :recipients, :creator_id, :integer
  end
end
