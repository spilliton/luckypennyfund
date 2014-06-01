class AddLastNameToRecipients < ActiveRecord::Migration
  def change
    add_column :recipients, :last_name, :string
  end
end
