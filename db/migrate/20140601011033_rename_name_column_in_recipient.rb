class RenameNameColumnInRecipient < ActiveRecord::Migration
  def change
    rename_column :recipients, :name, :first_name
  end
end
