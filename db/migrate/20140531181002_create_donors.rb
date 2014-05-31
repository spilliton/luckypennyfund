class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.boolean :organization

      t.timestamps
    end
  end
end
