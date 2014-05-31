class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :email
      t.boolean :organization
      t.string :recipient_id

      t.timestamps
    end
  end
end
