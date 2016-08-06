class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.string :from, null: false
      t.integer :pledge, null: false
      t.string :note
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
