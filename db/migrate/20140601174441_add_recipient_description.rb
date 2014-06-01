class AddRecipientDescription < ActiveRecord::Migration
  def change
    add_column :recipients, :description, :text
  end
end
